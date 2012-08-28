class DogsController < ApplicationController
  def index
    @dogs = Dog.where(:available => true).order("created_at DESC")
  end

  # Show a single dog
  def show

    @dog = Dog.find_by_id(params[:id])

    if @dog.nil?
      flash[:notice] = "No dog with that ID!"
      redirect_to("/")
    end

    # If posting an enquiry
    if request.post?
      @enquiry = Enquiry.create(params[:enquiry])
      @enquiry.dog_id = @dog.id

      if @enquiry.valid?
        # Save
        @enquiry.save

        # Mail ourselves
        EnquiryMailer.enquiry_email(@enquiry).deliver

        # Say thank you
        flash[:notice] = "Thank you for your enquiry! We'll get back to you within 48 hours."
        redirect_to "/dogs/show/#{@dog.id}"
      end

    else

      # Create dummy enquiry
      @enquiry = Enquiry.new
    end

  end
end
