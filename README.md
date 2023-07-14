# Prueba_Ruby_Herencia

Este código es un ejemplo de cómo utilizar la herencia y el polimorfismo en Ruby. La clase Person es la clase base, y las clases Student, Teacher y Parent heredan de ella. 
La clase Person tiene los métodos initialize, talk e introduce. 
Las clases Student, Teacher y Parent sobreescriben los métodos talk e introduce para que tengan una implementación específica para cada tipo de persona.

El código crea tres objetos: un estudiante, un profesor y un apoderado. Los objetos se crean llamando a los constructores de las clases Student, Teacher y Parent. 
Los constructores reciben los atributos de cada objeto como parámetros.

El código llama a los métodos talk e introduce de cada objeto. Los métodos imprimen mensajes diferentes según el tipo de persona.

El código muestra cómo utilizar la herencia y el polimorfismo para crear código más organizado y reutilizable.

Se realizo la refactorización del codigo presentado a continuación:

class Person
  def initialize(first, last, age, type)
    @first_name = first
    @last_name = last
    @age = age
    @type = type
  end
  
  def birthday
    @age += 1
  end
  
  def talk
    if @type == "Student"
      puts "Aquí es la clase de programación con Ruby?"
    elsif @type == "Teacher"
      puts "Bienvenidos a la clase de programación con Ruby!"
    elsif @type == "Parent"
      puts "Aquí es la reunión de apoderados?"
    end
  end

  def introduce
    if @type == "Student"
      puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    elsif @type == "Teacher"
      puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    elsif @type == "Parent"
      puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name}
            #{@last_name}."
    end
  end
end
