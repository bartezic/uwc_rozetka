module ProductsHelper
    class BrandFilter
        def filter(query, params)
            query = query.joins(:brand).where("brands.name" => params[:brand]) if params.has_key? :brand

            query.where(true)
        end

        def formURL(params, kwargs)
            if params.has_key? :brand
                brands = params[:brand].clone
            else
                brands = []
            end

            if kwargs.has_key? :brand
                brand = kwargs[:brand]
                brands.toggle brand
            end

            brands.map{|brand| "brand[]=#{brand}" }.join("&")
        end

        def linkClass(params, key, value=nil)
            if params.has_key?(:brand) && params[:brand].include?(key)
                "active"
            else
                "filter-item"
            end
        end

        def count(products, key, value=nil)
            products.select do |product|
                product.brand.name == key
            end.map(&:id).uniq.count
        end
    end

    class FeatureFilter
        def initialize
            @features = Feature.select(:id).map(&:id).uniq
        end

        def filter(query, params)

            query = query.joins(:product_features)

            sql_query_parts = []
            sql_query_args = []
            @features.each do |feature_id|
                feature_id = feature_id.to_s
                if params.has_key? feature_id
                    products = ProductFeature.where(:feature_id=>feature_id, :value=>params[feature_id]).map(&:product_id).uniq
                    query = query.where(:id => products)
                end
            end

            query
        end

        def formURL(params, kwargs)
            url_parts = []
            @features.each do |feature_id|
                feature_id = feature_id.to_s
                if params.has_key? feature_id
                    feature_values = params[feature_id].clone
                else
                    feature_values = []
                end
                if kwargs.has_key? feature_id
                    value = kwargs[feature_id]
                    feature_values.toggle value
                end

                url_part = feature_values.map{|feature_value| "#{feature_id}[]=#{feature_value}" }.join("&")
                url_parts.push(url_part) if url_part.present?
            end
            url_parts.reject(&:blank?)
            url_parts.join("&")
        end

        def linkClass(params, key, value)
            key = key.to_s
            if params.has_key?(key) && params[key].include?(value)
                "active"
            else
                "filter-item"
            end
        end

        def count(products, key, value)
            ProductFeature.where(:product_id=>products, :feature_id => key, :value => value).count
        end
    end

    class SearchFilter
        def filter(query, params)
            if params.has_key?(:search)
                products = Product.search params[:search]
                query.where(:id=> products)
            else
                query
            end
        end

        def formURL(params, kwargs)
            "search=#{params[:search]}" if params.has_key?(:search)
        end
    end

    class ProductFilter
        def initialize(query, params)
            @query = query
            @params = params
            @filters = {
                :brand => BrandFilter.new,
                :feature => FeatureFilter.new,
                :search => SearchFilter.new
            }
        end
        def products(params=nil)
            params = params || @params
            query = @query
            @filters.map do |filter_name, filter|
                query = filter.filter(query, params)
            end
            query
        end
        def formURL(kwargs)
            url_parts = []
            @filters.map do |filter_name, filter|
                filter_part = filter.formURL(@params.clone, kwargs)
                url_parts.push(filter_part) unless filter_part.blank?
            end
            "?#{url_parts.join("&")}"
        end

        def linkClass(type, key, value=nil)
            @filters[type].linkClass(@params.clone, key, value)
        end

        def count(type, key, value=nil)
            params = @params.clone
            if type==:feature
                params.delete(key.to_s)
            end

            if type==:brand
                params.delete(:brand)
            end

            @filters[type].count(products(params), key, value)
        end
    end

    def product_filter_helper(query, params)
        ProductFilter.new(query, params)
    end
end
