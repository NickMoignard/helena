class MainController < ApplicationController
    before_action :authenticate_user!, only: [:show]


    def login
    end

    def program
    end

    def show
    end

    def welcome
    end

end
