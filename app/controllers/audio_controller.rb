class AudioController < ApplicationController
   before_action :set_audio, only: [:show, :edit, :update, :destroy]

	def index
		@audio = Audio.all
	end

	def create
  	@audio = Audio.create(audio_params)

  	respond_to do |format|
      if @audio.save
        format.html { redirect_to @audio, notice: 'Audio was successfully created.' }
        format.json { render :show, status: :created, location: @audio }
      else
        format.html { render :new }
        format.json { render json: @audio.errors, status: :unprocessable_entity }
      end
    end
  end

	def new
		@audio = Audio.new
	end

	def show
		@audio = Audio.find(params[:id])
	end

	def edit
	end

	def update
    respond_to do |format|
      if @audio.update(audio_params)
        format.html { redirect_to @audio, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @audio }
      else
        format.html { render :edit }
        format.json { render json: @audio.errors, status: :unprocessable_entity }
      end
    end
  end

	# DELETE /audios/1
  # DELETE /audios/1.json
  def destroy
  	 if @audio.present?
    @audio.destroy
    respond_to do |format|
      format.html { redirect_to @audio, notice: 'Audio was successfully destroyed.' }
      format.json { head :no_content }
    end
    end
  end

	private

	# Use strong_parameters for attribute whitelisting
	# Use callbacks to share common setup or constraints between actions.
    def set_audio
      @audio = Audio.find(params[:id])
    end

	def audio_params
	  params.require(:audio).permit(:music)
	end

end
