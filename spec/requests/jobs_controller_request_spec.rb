require 'rails_helper'

RSpec.describe "JobsControllers", type: :request do
    describe "GET #index" do
      it "renders the :index view"
      it "renders the :root view"
    end

    describe "GET #show" do
      it "assigns the requested job to @job"
      it "renders the :show template"
    end

    describe "GET #new" do
      it "assigns a new job to @job"
      it "renders the :new template"
    end

    describe "POST #create" do
      context "with valid attributes" do
        it "saves the new contact in the database"
        it "redirects to the home page"
      end

      context "with invalid attributes" do
        it "does not save the new contact in the database"
        it "re-renders the :new template"
      end
    end
  end
  
