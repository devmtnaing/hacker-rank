class BearWorkBook
  attr_accessor :max_problems_per_page, :problems

  def initialize args
    yield self if block_given?
    args.each do |k,v|
      instance_variable_set("@#{k}", v) unless v.nil?
    end
    # @problems ||= []
    # @max_problems_per_page ||= 0
  end

  def total_pages
    return 0 if @problems.empty?
    @problems.map { |p|
      t = p / @max_problems_per_page
      (last_page_problems(p, @max_problems_per_page) != 0 &&
       last_page_problems(p, @max_problems_per_page) < @max_problems_per_page) ? t += 1 : t
    }.inject(:+)
  end

  def total_chapters
    return 0 if @problems.empty?
    @problems.count
  end

  def last_page_problems(total_problems, max_problems_per_page)
    total_problems % max_problems_per_page
  end

  private_methods :last_page_problems

end

# total_chapters = gets.strip.to_i
# max_problems = gets.strip.to_i
# num_of_problems_per_chap = gets.strip.split(' ').map(&:to_i)

# total_chapters = 5
# max_problems = 3
# num_of_problems_per_chap = [4, 2, 6, 1, 10]
#
# bear_work_book = BearWorkBook.new(num_of_problems_per_chap, total_chapters, max_problems)
#
# puts bear_work_book.total_pages
#