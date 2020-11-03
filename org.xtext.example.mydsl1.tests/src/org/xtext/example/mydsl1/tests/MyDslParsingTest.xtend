/*
 * generated by Xtext 2.21.0
 */
package org.xtext.example.mydsl1.tests

import com.google.inject.Inject
import org.eclipse.xtext.testing.InjectWith
import org.eclipse.xtext.testing.extensions.InjectionExtension
import org.eclipse.xtext.testing.util.ParseHelper
import org.junit.jupiter.api.Assertions
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.^extension.ExtendWith
import org.xtext.example.mydsl1.myDsl.ProjectModel

@ExtendWith(InjectionExtension)
@InjectWith(MyDslInjectorProvider)
class MyDslParsingTest {
	@Inject
	ParseHelper<ProjectModel> parseHelper
	
	@Test
	def void loadModel() {
		val result = parseHelper.parse('''
			import "foo1.csv"
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
		
				
		val PythonCompiler cmpPython = new PythonCompiler(result)
		cmpPython.compileAndRun
		
		// TODO 
		// val BashCompiler cmpBash = null
		

	}
}
