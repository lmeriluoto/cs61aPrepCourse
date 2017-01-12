class OrangeTree
  def initialize
    @height = 1
    @oranges = 0
  end
  def height
    puts 'The tree is ' + @height.to_s + ' ft tall!'
  end
  def one_year_passes
    @height = @height + 1
    if @height > 3
      @oranges = 3 * @height
    else
      @oranges = 0
    end
    puts 'A year passes...'
    if @height == 10
      puts 'The orange tree has died!'
      exit
    end
  end
  def count_the_oranges
    if @height <= 3
      @oranges = 0
      puts 'There are no oranges on this baby tree yet!'
    else
      puts 'There are ' + @oranges.to_s + ' oranges on the tree!'
    end
  end
  def pick_an_orange
    if @oranges > 0
      @oranges = @oranges - 1
      puts 'That orange was bloody delicious!'
    else
      puts 'There are no more oranges to pick this year! Boo hoo!'
    end
  end
end

tree = OrangeTree.new
tree.height
tree.one_year_passes
tree.count_the_oranges
tree.one_year_passes
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.count_the_oranges
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.count_the_oranges
