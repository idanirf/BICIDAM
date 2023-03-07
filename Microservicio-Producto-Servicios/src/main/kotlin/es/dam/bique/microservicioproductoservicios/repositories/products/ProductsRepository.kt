package es.dam.bique.microservicioproductoservicios.repositories.products

import es.dam.bique.microservicioproductoservicios.models.Product
import kotlinx.coroutines.flow.Flow
import org.springframework.data.repository.kotlin.CoroutineCrudRepository
import org.springframework.stereotype.Repository
import java.util.*

/**
 * Repository for products
 * @author The BiquesDAM Team
 */
@Repository
interface ProductsRepository : CoroutineCrudRepository<Product, Long> {

    suspend fun findByUuid(uuid: UUID): Flow<Product>

}