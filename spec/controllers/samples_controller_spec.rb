require 'spec_helper'

describe SamplesController do

  # This should return the minimal set of attributes required to create a valid
  # Sample. As you add validations to Sample, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {name: 'sample'} }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SamplesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all samples as @samples" do
      sample = Sample.create! valid_attributes
      get :index, {}, valid_session
      assigns(:samples).should eq([sample])
    end
  end

  describe "GET show" do
    it "assigns the requested sample as @sample" do
      sample = Sample.create! valid_attributes
      get :show, {:id => sample.to_param}, valid_session
      assigns(:sample).should eq(sample)
    end
  end

  describe "GET new" do
    it "assigns a new sample as @sample" do
      get :new, {}, valid_session
      assigns(:sample).should be_a_new(Sample)
    end
  end

  describe "GET edit" do
    it "assigns the requested sample as @sample" do
      sample = Sample.create! valid_attributes
      get :edit, {:id => sample.to_param}, valid_session
      assigns(:sample).should eq(sample)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Sample" do
        expect {
          post :create, {:sample => valid_attributes}, valid_session
        }.to change(Sample, :count).by(1)
      end

      it "assigns a newly created sample as @sample" do
        post :create, {:sample => valid_attributes}, valid_session
        assigns(:sample).should be_a(Sample)
        assigns(:sample).should be_persisted
      end

      it "redirects to the created sample" do
        post :create, {:sample => valid_attributes}, valid_session
        response.should redirect_to(Sample.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sample as @sample" do
        # Trigger the behavior that occurs when invalid params are submitted
        Sample.any_instance.stub(:save).and_return(false)
        post :create, {:sample => {name: ''}}, valid_session
        assigns(:sample).should be_a_new(Sample)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Sample.any_instance.stub(:save).and_return(false)
        post :create, {:sample => {name: "sample"}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested sample" do
        sample = Sample.create! valid_attributes
        # Assuming there are no other samples in the database, this
        # specifies that the Sample created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Sample.any_instance.should_receive(:update).with({ "name" => "params" })
        put :update, {:id => sample.to_param, :sample => { "name" => "params" }}, valid_session
      end

      it "assigns the requested sample as @sample" do
        sample = Sample.create! valid_attributes
        put :update, {:id => sample.to_param, :sample => valid_attributes}, valid_session
        assigns(:sample).should eq(sample)
      end

      it "redirects to the sample" do
        sample = Sample.create! valid_attributes
        put :update, {:id => sample.to_param, :sample => valid_attributes}, valid_session
        response.should redirect_to(sample)
      end
    end

    describe "with invalid params" do
      it "assigns the sample as @sample" do
        sample = Sample.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Sample.any_instance.stub(:save).and_return(false)
        put :update, {:id => sample.to_param, :sample => {name: ''}}, valid_session
        assigns(:sample).should eq(sample)
      end

      it "re-renders the 'edit' template" do
        sample = Sample.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Sample.any_instance.stub(:save).and_return(false)
        put :update, {:id => sample.to_param, :sample => {name: 'sample'}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested sample" do
      sample = Sample.create! valid_attributes
      expect {
        delete :destroy, {:id => sample.to_param}, valid_session
      }.to change(Sample, :count).by(-1)
    end

    it "redirects to the samples list" do
      sample = Sample.create! valid_attributes
      delete :destroy, {:id => sample.to_param}, valid_session
      response.should redirect_to(samples_url)
    end
  end

end
