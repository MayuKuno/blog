class LanguagesController < ApplicationController

  def new
    @languages = Language.all

    @language = Language.new
  end
  def create
    Language.create(language_params)
    redirect_to posts_path
  end

  private
  def language_params
    params.require(:language).permit(:text)
  end
end



