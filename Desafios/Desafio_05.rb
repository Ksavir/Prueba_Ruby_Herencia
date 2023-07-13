#Se crea la clase Person que tiene como atributos first_name, last_name, age y type.
class Person
  #Se utiliza el metodo attr_accessor para poder acceder a los atributos de la clase.
  attr_accessor :first_name, :last_name, :age, :type

  #Se define el metodo initialize que recibe los atributos de la clase.
  def initialize(first_name, last_name, age, type)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @type = type
  end

  #se definen los metodos talk e introduce.
  def talk
  end

  def introduce
  end
end

#Se crea la clase Student que hereda de la clase Person.
class Student < Person
  def talk
    puts 'Aqui es la clase de programación con Ruby?'
  end

  def introduce
    puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name} , tengo #{@age} años y soy un(a) #{@type}."
  end
end

#Se crea la clase Teacher que hereda de la clase Person.
class Teacher < Person

  def talk
    puts 'Bienvenidos a la clase de programación con Ruby!!'
  end


  def introduce
    puts "Hola queridos alumnos, mi nombre es #{@first_name} #{@last_name}. Soy su profesor de Ruby!"
  end
end

#Se crea la clase Parent que hereda de la clase Person.
class Parent < Person
    def talk
    puts "Aqui es la reunion de apoderados?"
  end

  def introduce
    puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
  end
end

#Se crean los objetos de las clases Student, Teacher y Parent. Entregando los atributos de cada uno.
student = Student.new('Kevin', 'Rivas', 32, 'estudiante')
teacher = Teacher.new('Brayan', 'Diaz', 33, 'profesor')
parent = Parent.new('Euclides', 'Rivas', 62, 'apoderado')

#Se llama a los metodos talk e introduce de cada clase. Y observamos que cada uno tiene su propia implementacion.
student.talk
student.introduce
puts ""
teacher.talk
teacher.introduce
puts ""
parent.talk
parent.introduce  
puts ""