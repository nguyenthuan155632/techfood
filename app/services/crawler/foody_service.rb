class Crawler::FoodyService < Patterns::Service

  def initialize(parameters)
    @data_json = JSON.parse(parameters[:data_json])
    @source = Source.find(parameters[:source_id])
    @categories = Category.where(id: parameters[:category])
    @user = User.find(parameters[:user_id])
    @items = @data_json['searchItems']
  end

  def call
    import_data!
  end

  private

  attr_reader :data_json, :source, :categories, :user, :items

  def import_data!
    ApplicationRecord.transaction do
      items.each do |item|
        f = Food.find_by(display_name: item['Name'])
        if f
          category_ids = food.categories.ids + categories.ids
          food.update!(categories: Category.where(id: category_ids))
          next
        end
        food = create_food!(item)
        create_food_information!(item, food)
      end
    end
  end

  def create_food!(item)
    Food.create!(
      display_name: item['Name'],
      status: :published,
      source_id: source.id,
      user_id: user.id,
      categories: categories,
    )
  end

  def create_food_information!(item, food)
    FoodInformation.create!(
      food_id: food.id,
      description: '',
      detail: '',
      address: item['Address'],
      phone_number: item['Phone'],
      district: item['District'],
      city: item['City'],
      total_review: item['TotalReview'],
      total_view: item['TotalView'],
      avg_rating: item['AvgRating'],
      review_url: item['ReviewUrl'],
      album_url: item['AlbumUrl'],
      latitude: item['Latitude'],
      longitude: item['Longitude'],
      booking_url: item['BookingUrl'],
      delivery_url: item['DeliveryUrl'],
      location: item['Location'],
      thumbnail_url: item['PicturePathLarge'],
      detail_url: item['DetailUrl'],
    )
  end

end