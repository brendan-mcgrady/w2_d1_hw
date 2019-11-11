require("minitest/autorun")
require("minitest/rg")
require_relative("../students")

class TestStudent < MiniTest::Test
  def test_can_create_pupil()
    student = Student.new("Brendan", "G16")
  end

  def test_student_name()
    student = Student.new("Brendan", "G16")
    assert_equal("Brendan", student.name)
  end

  def test_cohort()
    student = Student.new("Brendan", "G16")
    assert_equal("G16", student.cohort)
  end
end
