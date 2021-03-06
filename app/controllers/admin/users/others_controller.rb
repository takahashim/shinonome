# frozen_string_literal: true

module Admin
  module Users
    # 管理者管理
    class OthersController < Admin::ApplicationController
      before_action :set_user, only: %i[edit update destroy]

      # GET /users
      def index
        @users = User.order(:id).all
        @user = User.new
      end

      # GET /users/1/edit
      def edit; end

      # POST /users
      def create
        @user = User.new(user_params)

        if @user.save
          redirect_to admin_users_others_path, notice: '管理者を追加しました.'
        else
          @users = User.order(:id).all
          render :index
        end
      end

      # PATCH/PUT /users/1
      def update
        if @user.update(user_params)
          redirect_to admin_users_others_path, notice: '管理者を更新しました.'
        else
          render :edit
        end
      end

      # DELETE /users/1
      def destroy
        @user.destroy
        redirect_to admin_users_others_path, notice: '管理者を削除しました'
      end

      protected

      def set_user
        @user = User.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def user_params
        params.require(:user).permit(:login, :email, :username, :password, :password_confirmation)
      end
    end
  end
end
