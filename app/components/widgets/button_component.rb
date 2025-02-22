# frozen_string_literal: true

class Widgets::ButtonComponent < ViewComponent::Base

  erb_template <<-ERB
    <button class="bg-black inline-block border-brutal-radius">
      <span class="<%= bg_color %> <%= text_color %> font-bold block border-brutal-radius border-2 border-black px-4 py-1.5 -translate-x-1 -translate-y-1 hover:-translate-y-2 active:translate-y-0 active:translate-x-0 transition-all">
        <%= @text %>
      </span>
    </button>
  ERB

  def initialize(text: 'Button', type: "Button", variant: :base, **options)
    @text = text
    @type = type
    @variant = variant
    @options = options
  end

  private

  def bg_color
    case @variant
    when :base
      'bg-white'
    when :primary
      'bg-blue-600'
    when :danger
      'bg-red-600'
    end
  end

  def text_color
    case @variant
    when :base
      'text-black'
    when :primary
      'text-white'
    when :danger
      'text-white'
    end
  end
end
