class Crawler::FoodyService < Patterns::Service

  def initialize(parameters)
    @data_json = JSON.parse(parameters[:data_json])
    @source = Source.find(parameters[:source_id])
    @category = Category.find(parameters[:category_id])
    @user = User.find(parameters[:user_id])
    @items = @data_json['searchItems']
  end

  def call
    import_data
    food
  end

  private

  attr_reader :data_json, :source, :category, :user, :items

  def import_data
    'test'
  end

end