module CategoriesHelper

  def ancestry_options(items, text: :display_name)
    # items is hierarchical tree format.
    # { cate1, cate2: { cate3, cate4 } }
    result = []
    return result if items.blank?
    items.each do |item, sub_items|
      result << [('-' * item.depth) + item[text], item.id]
      result += ancestry_options(sub_items, text: text) if sub_items.present?
    end
    result
  end

  def categories_link_path(categories)
    safe_join(categories.map { |category| link_to(category.display_name, category_path(category.id)) }, ' / ')
  end

end
