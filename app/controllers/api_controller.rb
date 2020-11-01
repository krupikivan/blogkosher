class ApiController < ApplicationController


    def get_articles
        @art = Article.all
        respond_to do |format|
            format.json  { render :json => {
                :success => true,
                :articles => @art }}
          end
    end
end