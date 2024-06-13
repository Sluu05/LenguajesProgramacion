class Tarea {
  String titulo;
  String descripcion;
  bool completada;

  Tarea(this.titulo, this.descripcion) : completada = false;

  void marcar_completada() {
    completada = true;
  }

  String toString() {
    return 'Titulo: $titulo, Descripción: $descripcion, Completada: $completada';
  }
}

class ListaTareas {
  
  List<Tarea> tareas = []; // Lista de tareas

  void agregarTarea(Tarea tarea) {  //Agregar una tarea
    tareas.add(tarea);
  }

  void eliminarTarea(String? titulo) { //Eliminar una tarea por su título
    tareas.removeWhere((tarea) => tarea.titulo == titulo);
  }

  void TareaCompletada(String? titulo) { //Marcar tarea como completada por  título
    for (var tarea in tareas) {
      if (tarea.titulo == titulo) {
        tarea.marcar_completada();
        break;
      }
    }
  }

  void mostrarTareas() {
    for (var tarea in tareas) {
      print(tarea);
    }
  }
}

void main() {
  ListaTareas listaTareas = ListaTareas();

  listaTareas.agregarTarea(Tarea('Leer libro', 'Leer libro de Harry Potter'));
  listaTareas.agregarTarea(Tarea('Descargar programa', 'Descargar Flutter para desarrollar apps'));
 
  print('Lista de Tareas:');
  listaTareas.mostrarTareas();

  listaTareas.TareaCompletada('Leer libro');
  listaTareas.TareaCompletada('Descargar programa');

  print('\nLista después de completar las tareas:');
  listaTareas.mostrarTareas();

  listaTareas.eliminarTarea('Leer libro');

  print('\nLista después de eliminar una tarea:');
  listaTareas.mostrarTareas();
}
