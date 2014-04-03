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

describe SkillsController do

  # This should return the minimal set of attributes required to create a valid
  # Skill. As you add validations to Skill, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SkillsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all skills as @skills" do
      skill = Skill.create! valid_attributes
      get :index, {}, valid_session
      assigns(:skills).should eq([skill])
    end
  end

  describe "GET show" do
    it "assigns the requested skill as @skill" do
      skill = Skill.create! valid_attributes
      get :show, {:id => skill.to_param}, valid_session
      assigns(:skill).should eq(skill)
    end
  end

  describe "GET new" do
    it "assigns a new skill as @skill" do
      get :new, {}, valid_session
      assigns(:skill).should be_a_new(Skill)
    end
  end

  describe "GET edit" do
    it "assigns the requested skill as @skill" do
      skill = Skill.create! valid_attributes
      get :edit, {:id => skill.to_param}, valid_session
      assigns(:skill).should eq(skill)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Skill" do
        expect {
          post :create, {:skill => valid_attributes}, valid_session
        }.to change(Skill, :count).by(1)
      end

      it "assigns a newly created skill as @skill" do
        post :create, {:skill => valid_attributes}, valid_session
        assigns(:skill).should be_a(Skill)
        assigns(:skill).should be_persisted
      end

      it "redirects to the created skill" do
        post :create, {:skill => valid_attributes}, valid_session
        response.should redirect_to(Skill.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved skill as @skill" do
        # Trigger the behavior that occurs when invalid params are submitted
        Skill.any_instance.stub(:save).and_return(false)
        post :create, {:skill => { "name" => "invalid value" }}, valid_session
        assigns(:skill).should be_a_new(Skill)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Skill.any_instance.stub(:save).and_return(false)
        post :create, {:skill => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested skill" do
        skill = Skill.create! valid_attributes
        # Assuming there are no other skills in the database, this
        # specifies that the Skill created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Skill.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => skill.to_param, :skill => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested skill as @skill" do
        skill = Skill.create! valid_attributes
        put :update, {:id => skill.to_param, :skill => valid_attributes}, valid_session
        assigns(:skill).should eq(skill)
      end

      it "redirects to the skill" do
        skill = Skill.create! valid_attributes
        put :update, {:id => skill.to_param, :skill => valid_attributes}, valid_session
        response.should redirect_to(skill)
      end
    end

    describe "with invalid params" do
      it "assigns the skill as @skill" do
        skill = Skill.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Skill.any_instance.stub(:save).and_return(false)
        put :update, {:id => skill.to_param, :skill => { "name" => "invalid value" }}, valid_session
        assigns(:skill).should eq(skill)
      end

      it "re-renders the 'edit' template" do
        skill = Skill.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Skill.any_instance.stub(:save).and_return(false)
        put :update, {:id => skill.to_param, :skill => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested skill" do
      skill = Skill.create! valid_attributes
      expect {
        delete :destroy, {:id => skill.to_param}, valid_session
      }.to change(Skill, :count).by(-1)
    end

    it "redirects to the skills list" do
      skill = Skill.create! valid_attributes
      delete :destroy, {:id => skill.to_param}, valid_session
      response.should redirect_to(skills_url)
    end
  end

end
