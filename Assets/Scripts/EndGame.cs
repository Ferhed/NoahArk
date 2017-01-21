using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EndGame : MonoBehaviour
{

    private void Start()
    {
        StartCoroutine(ShowNewAnimals());
    }

    IEnumerator ShowNewAnimals()
    {
        List<AnimalInfo> savedAnimals = new List<AnimalInfo>();

        foreach (AnimalInfo info in AnimalManager.instance.GetSavedAnimals())
        {
            savedAnimals.Add(info);
        }
        
        for(int i = 0; i < savedAnimals.Count; i += 2)
        {
            if (i + 1 < savedAnimals.Count)
            {
                AnimalInfo childInfo = AnimalManager.instance.MixAnimals(savedAnimals[i], savedAnimals[i + 1]);

                AnimalManager.instance.AddAnimal(childInfo);

                GameObject mom = AnimalManager.instance.GenerateAnimal(transform.position + Vector3.forward, savedAnimals[i]);
                mom.GetComponent<Animal>().speed = 2f;
                GameObject dad = AnimalManager.instance.GenerateAnimal(transform.position - Vector3.forward, savedAnimals[i+1]);
                dad.GetComponent<Animal>().speed = 2f;
                GameObject child = AnimalManager.instance.GenerateAnimal(transform.position, childInfo);
                child.GetComponent<Animal>().speed = 2f;
                child.transform.localScale *= 0.5f;
            }
            else
            {
                GameObject remy = AnimalManager.instance.GenerateAnimal(transform.position, savedAnimals[i]);
                remy.GetComponent<Animal>().speed = 1f;
            }

            yield return new WaitForSeconds(2f);
        }

        yield return null;

        AnimalManager.instance.AddNewAnimals();
    }
	
}
