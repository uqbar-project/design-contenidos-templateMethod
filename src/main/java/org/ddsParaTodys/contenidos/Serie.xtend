package org.ddsParaTodys.contenidos

import org.eclipse.xtend.lib.annotations.Accessors
import java.time.LocalDate

@Accessors
abstract class Contenido {
	// definido en millones
	int presupuesto

	// Template method
	def esInteresante() {
		presupuesto > 5 && this.cumpleCriterioInteresante()
	}
	
	def boolean cumpleCriterioInteresante()
	
}

@Accessors
class Serie extends Contenido {
	int temporadas
	
	override cumpleCriterioInteresante() {
		temporadas < 5
	}
	
}

@Accessors
class Pelicula extends Contenido {
	LocalDate fechaEstreno = LocalDate.now
	
	def seEstrenoEsteAnio() {
		LocalDate.now.year === fechaEstreno.year
	}
	
	override cumpleCriterioInteresante() {
		this.seEstrenoEsteAnio
	}
	
}