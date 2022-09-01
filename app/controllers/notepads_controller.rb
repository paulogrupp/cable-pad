class NotepadsController < ApplicationController
  before_action :set_notepad, only: %i[edit update]
  def edit; end

  def update
    respond_to do |format|
      if @notepad.update(notepad_params)
        format.json { render body: nil, status: :ok }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @notepad.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_notepad
    @notepad = Notepad.find_or_initialize_by(name: params[:name])
  end

  # Only allow a list of trusted parameters through.
  def notepad_params
    params.permit(:text)
  end
end