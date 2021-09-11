class ProgramsController < ApplicationController
    # GET /programs
    def index
        programs = Program.all
        render json: programs, except: [:created_at, :updated_at]
    end
end
