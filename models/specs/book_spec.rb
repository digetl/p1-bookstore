require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../book")
require_relative("../author")

class BookTest < MiniTest::Test

    def setup

        @author = Author.new({
            "name" => "Robin Clark"
        })

        @low_stocked_book = Book.new({

            "title" => "My nonesense book",
            "genre" => "autobiography",
            "book_type" => "hard-back",
            "stock_level" => "2",
            "selling_price" => "20",
            "buying_price" => "10",
            "author_id" => @author.id})

            @well_stocked_book = Book.new({

            "title" => "My fave poems to fall asleep by",
            "genre" => "fiction",
            "book_type" => "hard-back",
            "stock_level" => "4",
            "selling_price" => "20",
            "buying_price" => "10",
            "author_id" => @author.id})

            @out_of_stock_book = Book.new({

            "title" => "My least fave poems to fall asleep by",
            "genre" => "fiction",
            "book_type" => "hard-back",
            "stock_level" => "0",
            "selling_price" => "2",
            "buying_price" => "1",
            "author_id" => @author.id})


                def test_well_stocked_book_over_3
        p "#{@low_stocked_book.stock_level}"
        assert_equal(true, @low_stocked_book.low_stock?)
    end
    end

    def test_low_stocked_book_below_3
        p "#{@low_stocked_book.stock_level}"
        assert_equal(true, @low_stocked_book.low_stock?)
    end

    def test_well_stocked_book_over_3
        p "#{@low_stocked_book.stock_level}"
        assert_equal(true, @low_stocked_book.low_stock?)
    end

    def test_out_of_stock_book
        p "#{@out_of_stock_book.stock_level}"
        assert_equal(true, @out_of_stock_book.out_of_stock?)
    end

end
