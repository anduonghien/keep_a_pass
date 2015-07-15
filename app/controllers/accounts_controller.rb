class AccountsController < ApplicationController
  before_action :authenticate_user!
  before_action :account_initialize, only: [:new, :create]
  before_action :load_account, only: [:show, :edit, :update, :destroy]
  before_action :set_account_params, only: [:create, :update]

  def index
    @accounts = current_user.accounts
  end

  def new
  end

  def create
    if @account.save
      redirect_to new_account_path, notice: "Create account success"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @account.save
      redirect_to account_path(@account), notice: "Update account success"
    else
      render :edit
    end
  end

  def destroy
    if @account.destroy
      redirect_to accounts_path, notice: "Destroy account success"
    else
      redirect_to account_path(@account), notice: "Destroy account not success"
    end
  end

  private
  def account_params
    if params[:account]
      params.require(:account).permit(:title, :website, :username, :password, :note)
    end
  end

  def account_initialize
    @account = current_user.accounts.new
  end

  def set_account_params
    @account.assign_attributes account_params
  end

  def load_account
    @account = Account.find params[:id]
  end
end
