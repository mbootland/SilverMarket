class Order < ApplicationRecord
    enum otype: [:buy, :sell]
end
