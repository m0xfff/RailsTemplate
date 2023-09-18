require "rails_helper"

RSpec.describe Student, type: :model do
  context "validations" do
    context "with all attributes" do
      let(:student_with_all_attributes) { FactoryBot.build(:student) }

      it "is valid" do
        expect(student_with_all_attributes).to be_valid
      end
    end

    context "with missing first_name" do
      let(:student_without_first_name) { FactoryBot.build(:student, :without_first_name) }

      it "is invalid" do
        expect(student_without_first_name).not_to be_valid
      end
    end

    # Add similar contexts for other attributes (last_name, email, birth_date, gender)

    context "with invalid email format" do
      let(:student_with_invalid_email) { FactoryBot.build(:student, email: "invalid_email") }

      it "is invalid" do
        expect(student_with_invalid_email).not_to be_valid
        expect(student_with_invalid_email.errors[:email]).to include("is invalid")
      end
    end

    context "with duplicate email" do
      let!(:existing_student) { FactoryBot.create(:student) }
      let(:student_with_duplicate_email) { FactoryBot.build(:student, email: existing_student.email) }

      it "is invalid" do
        expect(student_with_duplicate_email).not_to be_valid
        expect(student_with_duplicate_email.errors[:email]).to include("has already been taken")
      end
    end
  end

  describe "full_name" do
    it "returns the full name" do
      student = FactoryBot.build(:student, first_name: "John", middle_name: "Doe", last_name: "Smith", title: "Mr.")
      expect(student.full_name).to eq("Mr. John Doe Smith")
    end
  end
end
