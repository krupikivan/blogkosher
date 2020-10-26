class ArticlesController < ApplicationController 
    before_action :set_article, only: [:show, :edit,:update, :destroy]

    def show
        # byebug ---> Able to debug
        #Con el @ convertimos la variable en instancia asi puede ser accedida desde la vista
    end

    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def edit
    end

    def create
        # render plain: params[:article] #View the params
        @article = Article.new(article_params)
        # render plain: @article.inspect
        if  @article.save
            flash[:notice] = "Article was created successfully"
            redirect_to @article
        else
            render 'new'
        end
    end

    def update
        if @article.update(article_params)
            flash[:notice] = "Article was updated"
            redirect_to @article
        else
            render 'edit'
        end
    end
    
    def destroy
        @article.destroy
        redirect_to articles_path
    end
    
    private
    
    def set_article
        @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :description)
    end
end