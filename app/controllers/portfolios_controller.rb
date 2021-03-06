class PortfoliosController < ApplicationController

    def index
        @portfolio_items = Portfolio.all
    end

    def new
        @portfolio_item = Portfolio.new
    end

    def create
        @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

        respond_to do |format|
            if @portfolio_item.save
                format.html {redirect_to portfolios_path, notice: "Portfolio item was created" }
            else
                format.html {render :new}
            end
        end
    end

    def edit
        @portfolio_item = Portfolio.find(params[:id])
    end

    def update
        @portfolio_item = Portfolio.find(params[:id])

        respond_to do |format| 
            if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
                format.html {redirect_to portfolios_path, notice: "Portfolio item was updated"}
            else
                format.html {render :new}
            end
        end
    end

    def show
        @portfolio_item = Portfolio.find(params[:id])
    end

    def destroy
        # performs lookuk
        @portfolio_item = Portfolio.find(params[:id])
        # delete/destroy record
        @portfolio_item.destroy
        # redirect
        respond_to do |format|
            format.html {redirect_to portfolios_url, notice: 'Record was removed'}
        end
    end
end
