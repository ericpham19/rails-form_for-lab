class SchoolClassesController < ApplicationController
    def new
        @school_class= SchoolClass.new
    end


    def show
        @school_class= SchoolClass.find_by(id: params[:id])

    end

    
    def create
        @school_class= SchoolClass.new(school_class_params(:title, :room_number))
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def update
        @school_class= SchoolClass.find_by(id: params[:id])
        @school_class.update(school_class_params(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    def edit
        @school_class= SchoolClass.find_by(id: params[:id])
    end

end