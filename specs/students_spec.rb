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

  def test_set_name()
    student = Student.new("Alan", "G16")
    student.set_name("Alan Watt")
    assert_equal("Alan Watt", student.name)
  end

  def test_set_cohort()
    student = Student.new("Alan", "G15")
    student.set_cohort("G16")
    assert_equal("G16", student.cohort)
  end

  def test_student_talk()
    student = Student.new("Alan", "G16")
    assert_equal("I can talk!", student.talk("I can talk!"))
  end

  def test_fav_language()
    student = Student.new("Alan", "G16")
    assert_equal("I love Ruby!", student.fav_language("Ruby"))
  end
end
