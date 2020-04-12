package org.ddsParaTodys.contenidos

import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.DisplayName
import org.junit.jupiter.api.Test

import static org.junit.jupiter.api.Assertions.assertFalse
import static org.junit.jupiter.api.Assertions.assertTrue
import java.time.LocalDate

@DisplayName("Tests de película")
class PeliculaTest {
	
	Pelicula pelicula
	
	@BeforeEach
	def void init() {
		pelicula = new Pelicula
	}

	@Test
	@DisplayName("una película sin presupuesto no es interesante")
	def void testPeliculaSinPresupuesto() {
		// arrange
		pelicula.presupuesto = 2
		
		// assert
		assertFalse(pelicula.esInteresante(), "la película con poco presupuesto no debería ser interesante")
	}

	@Test
	@DisplayName("una película que no se estrenó este año no es interesante")
	def void testPeliculaConMuchasTemporadas() {
		// arrange
		pelicula.fechaEstreno = LocalDate.of(2015, 1, 5)

		// assert
		assertFalse(pelicula.esInteresante(), "la pelicula que no se estrenó este año no debería ser interesante")
	}

	@Test
	@DisplayName("una película con presupuesto y estrenada este año es interesante")
	def void testPeliculaInteresante() {
		// arrange
		pelicula.presupuesto = 6
		pelicula.fechaEstreno = LocalDate.now
		
		// assert
		assertTrue(pelicula.esInteresante(), "la película con presupuesto y estrenada este año debería ser interesante")
	}
	
}
