class BattlesController < ApplicationController
  before_action :set_battle, only: [:show, :edit, :update, :destroy]
  before_action :set_battle_field, only: [:edit, :new, :create, :update]

  # GET /battles
  # GET /battles.json
  def index
    @battles = Battle.all
  end

  # GET /battles/1
  # GET /battles/1.json
  def show
  end

  # GET /battles/new
  def new
    @battle = Battle.new
  end

  # GET /battles/1/edit
  def edit
  end

  # POST /battles
  # POST /battles.json
  def create
    @battle = Battle.new(battle_params)
    p @battle

    respond_to do |format|
      if @battle.save
        format.html { redirect_to @battle, notice: 'Battle was successfully created.' }
        format.json { render :show, status: :created, location: @battle }
      else
        format.html { render :new }
        format.json { render json: @battle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /battles/1
  # PATCH/PUT /battles/1.json
  def update
    respond_to do |format|
      if @battle.update(battle_params)
        format.html { redirect_to @battle, notice: 'Battle was successfully updated.' }
        format.json { render :show, status: :ok, location: @battle }
      else
        format.html { render :edit }
        format.json { render json: @battle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /battles/1
  # DELETE /battles/1.json
  def destroy
    @battle.destroy
    respond_to do |format|
      format.html { redirect_to battles_url, notice: 'Battle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_battle
      @battle = Battle.find(params[:id])
    end

    # プルダウン選択肢用のデータ取得
    def set_battle_field
      @clan_users = ClanUser.all
      @battle_sprints = BattleSprint.all
      @characters = Character.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def battle_params
      params.require(:battle).permit(:battle_sprints_id, :clan_users_id, :characters_id, :damage, :number)
    end
end
