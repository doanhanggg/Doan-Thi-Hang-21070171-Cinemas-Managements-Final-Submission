class BookingTicketsController < ApplicationController
  before_action :set_booking_ticket, only: %i[ show edit update destroy ]

  # GET /booking_tickets or /booking_tickets.json
  def index
    @booking_tickets = BookingTicket.all
  end

  # GET /booking_tickets/1 or /booking_tickets/1.json
  def show
  end

  # GET /booking_tickets/new
  def new
    @booking_ticket = BookingTicket.new
  end

  # GET /booking_tickets/1/edit
  def edit
  end

  # POST /booking_tickets or /booking_tickets.json
  def create
    @booking_ticket = BookingTicket.new(booking_ticket_params)

    respond_to do |format|
      if @booking_ticket.save
        format.html { redirect_to booking_ticket_url(@booking_ticket), notice: "Booking ticket was successfully created." }
        format.json { render :show, status: :created, location: @booking_ticket }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booking_tickets/1 or /booking_tickets/1.json
  def update
    respond_to do |format|
      if @booking_ticket.update(booking_ticket_params)
        format.html { redirect_to booking_ticket_url(@booking_ticket), notice: "Booking ticket was successfully updated." }
        format.json { render :show, status: :ok, location: @booking_ticket }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @booking_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booking_tickets/1 or /booking_tickets/1.json
  def destroy
    @booking_ticket.destroy

    respond_to do |format|
      format.html { redirect_to booking_tickets_url, notice: "Booking ticket was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking_ticket
      @booking_ticket = BookingTicket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_ticket_params
      params.require(:booking_ticket).permit(:ticket_number, :seat_type, :position, :add_popcorn_combo, :screen_type)
    end
end
