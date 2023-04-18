class UsersController < ApplicationController

    def new
        @user = User.new 
        
        render :new 
    end

    def create 
        @user = User.new(user_params)

        if @user 
            login!(@user)
            redirect_to user_url(@user)

        else

            #flash message goes here 
        end
    end

    def destroy 
        @user = User.find(params[:id])
        @user.destroy 


    end


    private 

    def user_params 
        params.require(:user).permit(:email,:password)
    end


end
