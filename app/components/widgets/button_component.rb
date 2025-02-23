# frozen_string_literal: true

class Widgets::ButtonComponent < ViewComponent::Base
  erb_template <<-ERB
    <button class="bg-black inline-block border-brutal-radius">
      <span class="<%= button_classes %>">
        <%= @text %>
      </span>
    </button>
  ERB

  def initialize(text: "Button", type: "Button", variant: :base, size: :md, **options)
    @text = text
    @type = type
    @variant = variant
    @size = size
    @options = options
  end

  private

  def button_classes
    "#{bg_color} #{text_color}
      block border-brutal-radius
      border-2 border-black
      #{size_classes}
      -translate-x-1 -translate-y-1
      hover:-translate-y-2
      active:translate-y-0 active:translate-x-0
      transition-all
    ".squish
  end

  def bg_color
    case @variant
    when :base
      "bg-white"
    when :primary
      "bg-blue-600"
    when :secondary
      "bg-violet-500"
    when :success
      "bg-emerald-600"
    when :danger
      "bg-rose-700"
    end
  end

  def text_color
    case @variant
    when :base
      "text-black"
    when :primary
      "text-blue-50"
    when :secondary
      "text-violet-50"
    when :success
      "text-emerald-50"
    when :danger
      "text-red-50"
    end
  end

  def size_classes
    case @size
    when :sm
      "text-sm px-2.5 py-1 font-semibold"
    when :md
      "text-base px-3.5 py-1.5 font-bold"
    when :lg
      "text-lg px-4 py-2 font-bold"
    end
  end
end
