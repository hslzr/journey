# frozen_string_literal: true

class Widgets::PlainButtonComponent < ViewComponent::Base
  erb_template <<-ERB
    <button class="<%= button_classes %>">
      <div class="flex flex-row items-center">
        <%= content %>
      </div>
    </button>
  ERB

  def initialize(variant: :base, **options)
    @variant = variant
    @options = options
  end

  private

  def button_classes
    "
      font-black text-black p-2 border-0 cursor-pointer bg-transparent
      %{text_color} border-b-2 border-transparent
      transition-all duration-300 ease-in-out
      hover:border-black
    ".squish % { text_color: text_color }
  end

  def text_color
    case @variant
    when :base
      "text-black"
    when :primary
      "text-white"
    when :secondary
      "text-white"
    else
      "text-black"
    end
  end
end
