module Api
    module V1
      class RegistrationsController < ApplicationController
        def create
          # puts params.inspect
              # render json: {message: 'inside registration controller'}

             @user = User.new params.require(:user).permit(:name, :email)

            # @user = User.new(name: "Jason", email: "what@gmail.com")

            if @user.save
              render json: { result: "ok" }, status: :created
            else
              render json: { result: "failed" }, status: :unprocessable_entity
            end

        end
      end
    end
  end

