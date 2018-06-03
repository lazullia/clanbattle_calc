class BattleSprintsController < ApplicationController
  before_action :set_battle_sprint, only: [:show, :edit, :update, :destroy]

  # GET /battle_sprints
  # GET /battle_sprints.json
  def index
    @battle_sprints = BattleSprint.all.order(month: :asc)
  end

  # GET /battle_sprints/1
  # GET /battle_sprints/1.json
  def show
  end

  # GET /battle_sprints/new
  def new
    @battle_sprint = BattleSprint.new
  end

  # GET /battle_sprints/1/edit
  def edit
  end

  # POST /battle_sprints
  # POST /battle_sprints.json
  def create
    @battle_sprint = BattleSprint.new(battle_sprint_params)

    respond_to do |format|
      if @battle_sprint.save
        format.html { redirect_to @battle_sprint, notice: 'Battle sprint was successfully created.' }
        format.json { render :show, status: :created, location: @battle_sprint }
      else
        format.html { render :new }
        format.json { render json: @battle_sprint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /battle_sprints/1
  # PATCH/PUT /battle_sprints/1.json
  def update
    respond_to do |format|
      if @battle_sprint.update(battle_sprint_params)
        format.html { redirect_to @battle_sprint, notice: 'Battle sprint was successfully updated.' }
        format.json { render :show, status: :ok, location: @battle_sprint }
      else
        format.html { render :edit }
        format.json { render json: @battle_sprint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /battle_sprints/1
  # DELETE /battle_sprints/1.json
  def destroy
    @battle_sprint.destroy
    respond_to do |format|
      format.html { redirect_to battle_sprints_url, notice: 'Battle sprint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_battle_sprint
      @battle_sprint = BattleSprint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def battle_sprint_params
      params.require(:battle_sprint).permit(:month, :start_date, :end_date, :battle_sprint_id)
    end
end
