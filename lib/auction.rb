class Auction
    attr_reader :items
    def initialize
        @items = []
    end

    def add_item(item)
        @items << item
    end

    def item_names
        @items.map(&:name)
    end

    def unpopular_items
        @items.select {|item| item.bids.empty?}
    end

    def potential_revenue
        @items.sum {|item| item.current_high_bid}
    end

    def bidders
        @items.map do |item|
            item.bids.keys
        end
    end
end

#binding.pry