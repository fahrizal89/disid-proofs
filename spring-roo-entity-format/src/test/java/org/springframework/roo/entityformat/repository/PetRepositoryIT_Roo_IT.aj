// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.entityformat.repository;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.roo.entityformat.dod.PetDataOnDemand;
import org.springframework.roo.entityformat.repository.PetRepository;
import org.springframework.roo.entityformat.repository.PetRepositoryIT;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

privileged aspect PetRepositoryIT_Roo_IT {
    
    declare @type: PetRepositoryIT: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: PetRepositoryIT: @ActiveProfiles("dev");
    
    declare @type: PetRepositoryIT: @WebAppConfiguration;
    
    declare @type: PetRepositoryIT: @SpringBootTest;
    
    /**
     * TODO Auto-generated attribute documentation
     */
    PetDataOnDemand PetRepositoryIT.dod;
    
    /**
     * TODO Auto-generated attribute documentation
     */
    @Autowired
    PetRepository PetRepositoryIT.petRepository;
    
    /**
     * This method will be automatically executed after each test method for freeing resources allocated with @Before annotated method.
     */
    @After
    public void PetRepositoryIT.clean() {
        
        // Clean needed after executing each test method
        // To be implemented by developer
        
    }
    
    /**
     * This method will be automatically executed before each test method for configuring needed resources.
     */
    @Before
    public void PetRepositoryIT.setup() {
        
        dod = new PetDataOnDemand(petRepository);
        
        // Setup needed before executing each test method
        // To be implemented by developer
        
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    @Ignore("To be implemented by developer")
    public void PetRepositoryIT.testFindByOwner() {
        
        // Setup
        // Implement additional setup if necessary
        
        // Exercise
        
        // Verify
        // Implement assertions
        
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    @Ignore("To be implemented by developer")
    public void PetRepositoryIT.testFindAll() {
        
        // Setup
        // Implement additional setup if necessary
        
        // Exercise
        
        // Verify
        // Implement assertions
        
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    @Ignore("To be implemented by developer")
    public void PetRepositoryIT.testFindByNameAndWeight() {
        
        // Setup
        // Implement additional setup if necessary
        
        // Exercise
        
        // Verify
        // Implement assertions
        
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    @Ignore("To be implemented by developer")
    public void PetRepositoryIT.testCountByNameAndWeight() {
        
        // Setup
        // Implement additional setup if necessary
        
        // Exercise
        
        // Verify
        // Implement assertions
        
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    @Ignore("To be implemented by developer")
    public void PetRepositoryIT.testCountByOwner() {
        
        // Setup
        // Implement additional setup if necessary
        
        // Exercise
        
        // Verify
        // Implement assertions
        
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    @Ignore("To be implemented by developer")
    public void PetRepositoryIT.testFindBySendRemindersAndWeightLessThan() {
        
        // Setup
        // Implement additional setup if necessary
        
        // Exercise
        
        // Verify
        // Implement assertions
        
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    @Ignore("To be implemented by developer")
    public void PetRepositoryIT.testCountBySendRemindersAndWeightLessThan() {
        
        // Setup
        // Implement additional setup if necessary
        
        // Exercise
        
        // Verify
        // Implement assertions
        
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    @Ignore("To be implemented by developer")
    public void PetRepositoryIT.testFindByTypeAndNameLike() {
        
        // Setup
        // Implement additional setup if necessary
        
        // Exercise
        
        // Verify
        // Implement assertions
        
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    @Ignore("To be implemented by developer")
    public void PetRepositoryIT.testCountByTypeAndNameLike() {
        
        // Setup
        // Implement additional setup if necessary
        
        // Exercise
        
        // Verify
        // Implement assertions
        
    }
    
}
