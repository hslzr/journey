class EntriesController < ApplicationController
  before_action :set_entry, only: %i[ show edit update destroy ]

  # GET /entries or /entries.json
  def index
    @entries = Entry.all
  end

  # GET /entries/1 or /entries/1.json
  def show
  end

  # GET /entries/new
  def new
    @entry = Entry.new
  end

  # GET /entries/1/edit
  def edit
  end

  # POST /entries or /entries.json
  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      redirect_to @entry, notice: "Entry was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /entries/1 or /entries/1.json
  def update
    if @entry.update(entry_params)
      redirect_to @entry, notice: "Entry was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /entries/1 or /entries/1.json
  def destroy
    @entry.destroy!

    redirect_to entries_path, status: :see_other, notice: "Entry was successfully destroyed."
  end

  private

  def set_entry
    @entry = Entry.find(params.expect(:id))
  end

  # Only allow a list of trusted parameters through.
  def entry_params
    params.expect(entry: %i[title content])
  end
end
