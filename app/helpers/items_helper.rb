module ItemsHelper
  DEFAULT_DEMO_IMAGE = "macbook.jpeg"

  DEMO_ITEM_IMAGE_MAP = {
    "MacBook Pro 14" => "macbook.jpeg",
    "MacBook Air M2" => "macbook.jpeg",
    "iPhone 13" => "macbook.jpeg",
    "iPhone 13 Pro" => "macbook.jpeg",
    "iPad Pro" => "macbook.jpeg",
    "Monitor 24 inch" => "macbook.jpeg",
    "Microeconomics Textbook" => "novel.jpeg",
    "Novel" => "novel.jpeg",
    "Calculus Notes Bundle" => "novel.jpeg",
    "Bicycle" => "bicycle.jpeg",
    "Badminton Racket" => "bicycle.jpeg",
    "Guitar" => "guitar.jpeg",
    "Lamp" => "lamp.jpeg",
    "Desk Lamp" => "lamp.jpeg",
    "Gaming Chair" => "lamp.jpeg"
  }.freeze

  DEMO_CATEGORY_IMAGE_MAP = {
    "electronics" => "macbook.jpeg",
    "books" => "novel.jpeg",
    "sports" => "bicycle.jpeg",
    "clothing" => "guitar.jpeg",
    "furniture" => "lamp.jpeg",
    "other" => "guitar.jpeg"
  }.freeze

  def quick_filter_button_classes(active)
    active ? "quick-filter-pill is-active" : "quick-filter-pill"
  end

  def demo_item_image(item)
    return DEFAULT_DEMO_IMAGE if item.blank?

    DEMO_ITEM_IMAGE_MAP[item.name] || DEMO_CATEGORY_IMAGE_MAP[item.category] || DEFAULT_DEMO_IMAGE
  end
end
