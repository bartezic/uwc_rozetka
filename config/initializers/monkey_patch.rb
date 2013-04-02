class Array
    def toggle(item)
        if self.include? item
            self.delete(item)
        else
            self.push(item)
        end
    end
end