class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
    #render json: params
  end

  def create
    @article = Article.new
    @article.title = params[:article][:title]
    @article.save
    redirect_to article_path(@article)
  end
end
