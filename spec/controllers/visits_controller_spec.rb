require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe VisitsController do

  # This should return the minimal set of attributes required to create a valid
  # Visit. As you add validations to Visit, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "start_date" => "2013-10-27 19:12:11" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # VisitsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all visits as @visits" do
      visit = Visit.create! valid_attributes
      get :index, {}, valid_session
      assigns(:visits).should eq([visit])
    end
  end

  describe "GET show" do
    it "assigns the requested visit as @visit" do
      visit = Visit.create! valid_attributes
      get :show, {:id => visit.to_param}, valid_session
      assigns(:visit).should eq(visit)
    end
  end

  describe "GET new" do
    it "assigns a new visit as @visit" do
      get :new, {}, valid_session
      assigns(:visit).should be_a_new(Visit)
    end
  end

  describe "GET edit" do
    it "assigns the requested visit as @visit" do
      visit = Visit.create! valid_attributes
      get :edit, {:id => visit.to_param}, valid_session
      assigns(:visit).should eq(visit)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Visit" do
        expect {
          post :create, {:visit => valid_attributes}, valid_session
        }.to change(Visit, :count).by(1)
      end

      it "assigns a newly created visit as @visit" do
        post :create, {:visit => valid_attributes}, valid_session
        assigns(:visit).should be_a(Visit)
        assigns(:visit).should be_persisted
      end

      it "redirects to the created visit" do
        post :create, {:visit => valid_attributes}, valid_session
        response.should redirect_to(Visit.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved visit as @visit" do
        # Trigger the behavior that occurs when invalid params are submitted
        Visit.any_instance.stub(:save).and_return(false)
        post :create, {:visit => { "start_date" => "invalid value" }}, valid_session
        assigns(:visit).should be_a_new(Visit)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Visit.any_instance.stub(:save).and_return(false)
        post :create, {:visit => { "start_date" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested visit" do
        visit = Visit.create! valid_attributes
        # Assuming there are no other visits in the database, this
        # specifies that the Visit created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Visit.any_instance.should_receive(:update_attributes).with({ "start_date" => "2013-10-27 19:12:11" })
        put :update, {:id => visit.to_param, :visit => { "start_date" => "2013-10-27 19:12:11" }}, valid_session
      end

      it "assigns the requested visit as @visit" do
        visit = Visit.create! valid_attributes
        put :update, {:id => visit.to_param, :visit => valid_attributes}, valid_session
        assigns(:visit).should eq(visit)
      end

      it "redirects to the visit" do
        visit = Visit.create! valid_attributes
        put :update, {:id => visit.to_param, :visit => valid_attributes}, valid_session
        response.should redirect_to(visit)
      end
    end

    describe "with invalid params" do
      it "assigns the visit as @visit" do
        visit = Visit.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Visit.any_instance.stub(:save).and_return(false)
        put :update, {:id => visit.to_param, :visit => { "start_date" => "invalid value" }}, valid_session
        assigns(:visit).should eq(visit)
      end

      it "re-renders the 'edit' template" do
        visit = Visit.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Visit.any_instance.stub(:save).and_return(false)
        put :update, {:id => visit.to_param, :visit => { "start_date" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested visit" do
      visit = Visit.create! valid_attributes
      expect {
        delete :destroy, {:id => visit.to_param}, valid_session
      }.to change(Visit, :count).by(-1)
    end

    it "redirects to the visits list" do
      visit = Visit.create! valid_attributes
      delete :destroy, {:id => visit.to_param}, valid_session
      response.should redirect_to(visits_url)
    end
  end

end
