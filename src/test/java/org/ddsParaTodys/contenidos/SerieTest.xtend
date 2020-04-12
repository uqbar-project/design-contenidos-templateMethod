package org.ddsParaTodys.contenidos

import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.DisplayName
import org.junit.jupiter.api.Test

import static org.junit.jupiter.api.Assertions.assertFalse
import static org.junit.jupiter.api.Assertions.assertTrue

@DisplayName("Tests de Serie")
class SerieTest {

	Serie serie
	
	@BeforeEach
	def void init() {
		serie = new Serie
	}

	@Test
	@DisplayName("una serie sin presupuesto no es interesante")
	def void testSerieSinPresupuesto() {
		// arrange
		serie.presupuesto = 2
		
		// assert
		assertFalse(serie.esInteresante(), "la serie con poco presupuesto no debería ser interesante")
	}

	@Test
	@DisplayName("una serie con muchas temporadas no es interesante")
	def void testSerieConMuchasTemporadas() {
		// arrange
		serie.temporadas = 5

		// assert
		assertFalse(serie.esInteresante(), "la serie con muchas temporadas no debería ser interesante")
	}

	@Test
	@DisplayName("una serie con presupuesto y pocas temporadas es interesante")
	def void testSerieInteresante() {
		// arrange
		serie.temporadas = 4
		serie.presupuesto = 6
		
		// assert
		assertTrue(serie.esInteresante(), "la serie con presupuesto y pocas temporadas debería ser interesante")
	}

}
