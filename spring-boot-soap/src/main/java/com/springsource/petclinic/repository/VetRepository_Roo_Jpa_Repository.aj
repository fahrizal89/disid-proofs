// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.petclinic.repository;

import com.springsource.petclinic.domain.Vet;
import com.springsource.petclinic.repository.VetRepository;
import com.springsource.petclinic.repository.VetRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect VetRepository_Roo_Jpa_Repository {
    
    declare parents: VetRepository extends JpaRepository<Vet, Long>;
    
    declare parents: VetRepository extends VetRepositoryCustom;
    
    declare @type: VetRepository: @Repository;
    
    declare @type: VetRepository: @Transactional(readOnly = true);
    
}
