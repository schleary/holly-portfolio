class ResumesController < ApplicationController
  def create
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  def show
  end

  def pdf
    @pdf = File.join(Rails.root, "tmp/HollyLearyResume.pdf")
    # send_file(@pdf, :filename => "HollyLearyResume.pdf", :type => "application/pdf")
    send_file(@pdf, :filename => "HollyLearyResume.pdf", :disposition => 'inline', :type => "application/pdf")
  end

end
