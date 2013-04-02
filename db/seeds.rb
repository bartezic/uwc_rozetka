# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

products = [
    {
        :name=>"Asus Transformer Pad Infinity TF700T 64GB Doc (TF700T-1I101A) Champagne Gold + Карта памяти на 16GB в подарок!",
        :price => 680,
        :brand => "Asus",
        :features => {
            "Диагональ экрана" => '10.1"',
            "Разрешение экрана" => '1920х1200',
            "Вид экрана" => 'Емкостный',
            "Тип экрана" => 'Super IPS+',
            "Операционная система" => 'Android 4.0',
            "Процессор" => 'NVIDIA Tegra 3 (1.6 ГГц)',
            "Количество ядер" => '4',
            "Оперативная память" => '1 ГБ',
            "Емкость накопителя" => '64 ГБ',
            "Поддержка карт памяти" => 'microSD/microSDHC',
            "Цвет" => 'Gold'        }
    },
    {
        :name=>"Asus PadFone A66 PS 32GB (A66-1A088WWE) Brown + Карта памяти на 32GB в подарок!!!",
        :price => 679,
        :brand => "Acer",
        :features => {
            "Диагональ экрана" => '10.1"',
            "Разрешение экрана" => '1280x800',
            "Вид экрана" => 'Емкостный',
            "Тип экрана" => 'Super AMOLED',
            "Операционная система" => 'Android 4.0',
            "Процессор" => 'Qualcomm Snapdragon S4 8260A (1.5 ГГц)',
            "Количество ядер" => '2',
            "Оперативная память" => '1 ГБ',
            "Емкость накопителя" => '32 ГБ',
            "Поддержка карт памяти" => 'microSD/microSDHC',
            "Цвет" => 'Brown'        }
    },
    {
        :name=>"Asus Transformer Pad Infinity TF700T 64GB (TF700T-1I100A) Champagne Gold + Карта памяти на 32GB в подарок!",
        :price => 599,
        :brand => "Apple",
        :features => {
            "Диагональ экрана" => '10.1"',
            "Разрешение экрана" => '1920х1200',
            "Вид экрана" => 'Емкостный',
            "Тип экрана" => 'Super IPS+',
            "Операционная система" => 'Android 4.0',
            "Процессор" => 'NVIDIA Tegra 3 (1.6 ГГц)',
            "Количество ядер" => '4',
            "Оперативная память" => '1 ГБ',
            "Емкость накопителя" => '64 ГБ',
            "Поддержка карт памяти" => 'microSD/microSDHC',
            "Цвет" => 'Gold'
        }
    },
    {
        :name=>"Asus MeMO Pad ME301T 16GB (ME301T-1B070A) Blue",
        :price => 382,
        :brand => "Lenovo",
        :features => {
            "Диагональ экрана" => '10.1"',
            "Разрешение экрана" => '1280x800',
            "Вид экрана" => 'Емкостный',
            "Тип экрана" => 'IPS',
            "Операционная система" => 'Android 4.1',
            "Процессор" => 'NVIDIA Tegra 3 (1.2 ГГц)',
            "Количество ядер" => '4',
            "Оперативная память" => '1 ГБ',
            "Емкость накопителя" => '16 ГБ',
            "Поддержка карт памяти" => 'microSD/microSDHC',
            "Цвет" => 'Blue'
        }
    },
    {
        :name=>"Asus Google Nexus 7C 3G 32GB (ASUS-1B013A) Официальная гарантия!!!",
        :price => 370,
        :brand => "Google",
        :features => {
            "Диагональ экрана" => '7"',
            "Разрешение экрана" => '1280x800',
            "Вид экрана" => 'Емкостный',
            "Тип экрана" => 'IPS',
            "Операционная система" => 'Android 4.2',
            "Процессор" => 'NVIDIA Tegra 3 (1.2 ГГц)',
            "Количество ядер" => '4',
            "Оперативная память" => '1 ГБ',
            "Емкость накопителя" => '32 ГБ',
            "Поддержка карт памяти" => 'нет',
            "Цвет" => 'Black'
        }
    },
    {
        :name=>"Asus Eee Pad Transformer TF300T 16GB (TF300T-1K063A) Blue",
        :price => 392,
        :brand => "Asus",
        :features => {
            "Диагональ экрана" => '10.1"',
            "Разрешение экрана" => '1280x800',
            "Вид экрана" => 'Емкостный',
            "Тип экрана" => 'IPS',
            "Операционная система" => 'Android 4.0',
            "Процессор" => 'NVIDIA Tegra 3 (1.2 ГГц)',
            "Количество ядер" => '4',
            "Оперативная память" => '1 ГБ',
            "Емкость накопителя" => '16 ГБ',
            "Поддержка карт памяти" => 'microSD/microSDHC',
            "Цвет" => 'Blue'
        }
    },
    {
        :name=>"Asus VivoTab Smart ME400C 64GB (ME400C-1B007W) Black",
        :price => 599,
        :brand => "Apple",
        :features => {
            "Диагональ экрана" => '10.1"',
            "Разрешение экрана" => '1366x768',
            "Вид экрана" => 'Емкостный',
            "Тип экрана" => 'IPS',
            "Операционная система" => 'Windows 8',
            "Процессор" => 'Intel Atom Z2760 (1.8 ГГц)',
            "Количество ядер" => '2',
            "Оперативная память" => '2 ГБ',
            "Емкость накопителя" => '64 ГБ',
            "Поддержка карт памяти" => 'microSD/microSDHC',
            "Цвет" => 'Black'
        }
    },
    {
        :name=>"Asus MeMO Pad ME301T 16GB (ME301T-1A066A) White",
        :price => 382,
        :brand => "Apple",
        :features => {
            "Диагональ экрана" => '10.1"',
            "Разрешение экрана" => '1280x800',
            "Вид экрана" => 'Емкостный',
            "Тип экрана" => 'IPS',
            "Операционная система" => 'Android 4.1',
            "Процессор" => 'NVIDIA Tegra 3 (1.2 ГГц)',
            "Количество ядер" => '4',
            "Оперативная память" => '1 ГБ',
            "Емкость накопителя" => '16 ГБ',
            "Поддержка карт памяти" => 'microSD/microSDHC',
            "Цвет" => 'White'
        }
    },
    {
        :name=>"Asus PadFone 2 A68 PS 64GB (A68-1B231RUS) White",
        :price => 927,
        :brand => "Assus",
        :features => {
            "Диагональ экрана" => '10.1"',
            "Разрешение экрана" => '1280x800',
            "Вид экрана" => 'Емкостный',
            "Тип экрана" => 'Super IPS+',
            "Операционная система" => 'Android 4.0',
            "Процессор" => 'Qualcomm Snapdragon S4 Pro 8064 (1.5 ГГц)',
            "Количество ядер" => '4',
            "Оперативная память" => '2 ГБ',
            "Емкость накопителя" => '64 ГБ',
            "Поддержка карт памяти" => 'нет',
            "Цвет" => 'White'
        }
    },
    {
        :name=>"Asus PadFone 2 A68 PS 64GB (A68-1A230RUS) Black",
        :price => 924,
        :brand => "Assus",
        :features => {
            "Диагональ экрана" => '10.1"',
            "Разрешение экрана" => '1280x800',
            "Вид экрана" => 'Емкостный',
            "Тип экрана" => 'Super IPS+',
            "Операционная система" => 'Android 4.0',
            "Процессор" => 'Qualcomm Snapdragon S4 Pro 8064 (1.5 ГГц)',
            "Количество ядер" => '4',
            "Оперативная память" => '2 ГБ',
            "Емкость накопителя" => '64 ГБ',
            "Поддержка карт памяти" => 'нет',
            "Цвет" => 'Black'
        }
    },
    {
        :name=>"Asus PadFone 2 A68 PS 32GB (A68-1B229RUS) White",
        :price => 890,
        :brand => "Assus",
        :features => {
            "Диагональ экрана" => '10.1"',
            "Разрешение экрана" => '1280x800',
            "Вид экрана" => 'Емкостный',
            "Тип экрана" => 'Super IPS+',
            "Операционная система" => 'Android 4.0',
            "Процессор" => 'Qualcomm Snapdragon S4 Pro 8064 (1.5 ГГц)',
            "Количество ядер" => '4',
            "Оперативная память" => '2 ГБ',
            "Емкость накопителя" => '32 ГБ',
            "Поддержка карт памяти" => 'нет',
            "Цвет" => 'White'
        }
    },
    {
        :name=>"Asus PadFone 2 A68 PS 32GB (A68-1A200RUS) Black",
        :price => 884,
        :brand => "Assus",
        :features => {
            "Диагональ экрана" => '10.1"',
            "Разрешение экрана" => '1280x800',
            "Вид экрана" => 'Емкостный',
            "Тип экрана" => 'Super IPS+',
            "Операционная система" => 'Android 4.0',
            "Процессор" => 'Qualcomm Snapdragon S4 Pro 8064 (1.5 ГГц)',
            "Количество ядер" => '4',
            "Оперативная память" => '2 ГБ',
            "Емкость накопителя" => '32 ГБ',
            "Поддержка карт памяти" => 'нет',
            "Цвет" => 'Black'
        }
    }
]

products.each do |pd|
    product = Product.find_or_create_by_name! pd[:name]

    Price.find_or_create_by_price_cents_and_product_id!({
        :price_cents => (pd[:price].to_i * 100),
        :product_id => product.id
    })

    brand = Brand.find_or_create_by_name!(pd[:brand])
    product.brand = brand
    product.save

    pd[:features].map do |feature_name, value|
        feature = Feature.find_or_create_by_name!(feature_name)

        ProductFeature.find_or_create_by_product_id_and_feature_id_and_value!({
            :product_id => product.id,
            :feature_id => feature.id,
            :value => value
        })
    end
end
