class ShowcaseController < ApplicationController
  def index
    @variants = %i[base primary secondary success danger]
    @sizes = %i[sm md lg]
  end
end
