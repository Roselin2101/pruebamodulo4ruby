# Identificar las posibles subclases que aparecen en el código a refactorizar. Cada una
# de ella contendrá los métodos correspondientes, talk e introduce.

class Person
    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
        @estado = case @age
                   when 0..18 then "Joven"
                   when 19..30 then "Adulto joven"
                   when 31..50 then "Mayor joven"
                   when  50..90  then "Adulto Mayor"
                   else "Error en la clasificacion"
                    end
    end

    def hablar
        puts "hablando"
    end

    def presentarse
        puts "prentando"
    end

    def edad
        puts "edad"
    end
end
class Student < Person #Herencia
    def hablar
        puts "Aquí es la clase de programación con Ruby?"
    end
    def presentarse
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
end
class Teacher < Person #Herencia
    def hablar
        puts "Bienvenidos a la clase de programación con Ruby!"
    end
    def presentarse
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Parent < Person #Herencia
    def hablar
        puts "Aquí es la reunión de apoderados?"
    end
    def presentarse
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
    def edad
        puts "#{@first_name} #{@last_name} eres #{@estado}"
    end
end

# Al generar las instancias de cada objeto, se muestra un mensaje en función del
# método que sea invocado.

#1era forma método invocado.


Parent.new("Diana","Cano",40).hablar
Parent.new("Diana","Cano",40).presentarse
Parent.new("Diana","Cano",40).edad

#2da forma método invocado.

alumno = Student.new("Roselin","Verdu", 33)
alumno.hablar()
alumno.presentarse
teacher = Teacher.new("Elizabeth","Zambrano", 43)
teacher.hablar()
teacher.presentarse
parent = Parent.new("Hector","Verdu", 85)
parent.hablar()
parent.presentarse

