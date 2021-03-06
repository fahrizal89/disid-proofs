// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.petclinic.dod;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.roo.petclinic.dod.OwnerDataOnDemand;
import org.springframework.roo.petclinic.dod.PetDataOnDemand;
import org.springframework.roo.petclinic.domain.Pet;
import org.springframework.roo.petclinic.domain.reference.PetType;
import org.springframework.roo.petclinic.repository.PetRepository;
import org.springframework.stereotype.Component;

privileged aspect PetDataOnDemand_Roo_DataOnDemand {
    
    declare @type: PetDataOnDemand: @Component;
    
    /**
     * TODO Auto-generated attribute documentation
     */
    private Random PetDataOnDemand.rnd = new SecureRandom();
    
    /**
     * TODO Auto-generated attribute documentation
     */
    private List<Pet> PetDataOnDemand.data;
    
    /**
     * TODO Auto-generated attribute documentation
     */
    public PetRepository PetDataOnDemand.petRepository;
    
    /**
     * TODO Auto-generated attribute documentation
     */
    @Autowired
    OwnerDataOnDemand PetDataOnDemand.ownerDataOnDemand;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param petRepository
     */
    public PetDataOnDemand.new(PetRepository petRepository) {
        this.petRepository = petRepository;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param index
     * @return Pet
     */
    public Pet PetDataOnDemand.getNewTransientPet(int index) {
        Pet obj = new Pet();
        setCreatedBy(obj, index);
        setCreatedDate(obj, index);
        setModifiedBy(obj, index);
        setModifiedDate(obj, index);
        setName(obj, index);
        setSendReminders(obj, index);
        setType(obj, index);
        setWeight(obj, index);
        return obj;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void PetDataOnDemand.setCreatedBy(Pet obj, int index) {
        String createdBy = "createdBy_" + index;
        obj.setCreatedBy(createdBy);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void PetDataOnDemand.setCreatedDate(Pet obj, int index) {
        Calendar createdDate = Calendar.getInstance();
        obj.setCreatedDate(createdDate);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void PetDataOnDemand.setModifiedBy(Pet obj, int index) {
        String modifiedBy = "modifiedBy_" + index;
        obj.setModifiedBy(modifiedBy);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void PetDataOnDemand.setModifiedDate(Pet obj, int index) {
        Calendar modifiedDate = Calendar.getInstance();
        obj.setModifiedDate(modifiedDate);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void PetDataOnDemand.setName(Pet obj, int index) {
        String name = "name_" + index;
        obj.setName(name);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void PetDataOnDemand.setSendReminders(Pet obj, int index) {
        Boolean sendReminders = true;
        obj.setSendReminders(sendReminders);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void PetDataOnDemand.setType(Pet obj, int index) {
        PetType type = PetType.class.getEnumConstants()[0];
        obj.setType(type);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void PetDataOnDemand.setWeight(Pet obj, int index) {
        Float weight = new Integer(index).floatValue();
        obj.setWeight(weight);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param index
     * @return Pet
     */
    public Pet PetDataOnDemand.getSpecificPet(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Pet obj = data.get(index);
        Long id = obj.getId();
        return petRepository.findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Pet
     */
    public Pet PetDataOnDemand.getRandomPet() {
        init();
        Pet obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return petRepository.findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @return Boolean
     */
    public boolean PetDataOnDemand.modifyPet(Pet obj) {
        return false;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    public void PetDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = petRepository.findAll(new org.springframework.data.domain.PageRequest(from / to, to)).getContent();
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Pet' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Pet>();
        for (int i = 0; i < 10; i++) {
            Pet obj = getNewTransientPet(i);
            try {
                petRepository.save(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            petRepository.flush();
            data.add(obj);
        }
    }
    
}
