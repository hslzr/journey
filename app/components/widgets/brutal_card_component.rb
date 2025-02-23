# frozen_string_literal: true

class Widgets::BrutalCardComponent < ViewComponent::Base
  erb_template <<-ERB
    <div class="border-brutal-radius <%= shadow_bg_color %>">
      <span class="<%= bg_color %> <%= text_color %> border-2 <%= border_color %> border-brutal-radius -translate-x-1 -translate-y-1 block px-4 py-2">
        <%= content %>
      </span>
    </div>
  ERB

  def initialize(variant: :base)
    @variant = variant
  end

  private

  def shadow_bg_color
    case @variant
    when :base
      "bg-black"
    when :danger
      "bg-red-500"
    end
  end

  def border_color
    case @variant
    when :base
      "border-black"
    when :danger
      "border-red-500"
    end
  end

  def bg_color
    case @variant
    when :base
      "bg-white"
    when :danger
      "bg-red-50"
    end
  end

  def text_color
    case @variant
    when :base
      "text-black"
    when :danger
      "text-red-500"
    end
  end
end
