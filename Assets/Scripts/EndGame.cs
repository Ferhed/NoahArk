using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using DG.Tweening;

public class EndGame : MonoBehaviour
{

    public Transform dadPos;
    public Transform momPos;
    public Transform childPos;

    public TextMesh childName;

    public GameObject fusionFx;

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

                GameObject mom = AnimalManager.instance.GenerateAnimal(momPos.position,  savedAnimals[i]);
                mom.GetComponent<Animal>().IsDrifting = false;
                mom.transform.eulerAngles = new Vector3(0, 0, 0);
                GameObject dad = AnimalManager.instance.GenerateAnimal(dadPos.position, savedAnimals[i+1]);
                dad.GetComponent<Animal>().IsDrifting = false;
                dad.transform.eulerAngles = new Vector3(0, 180, 0);

                yield return new WaitForSeconds(1f);

                mom.transform.DOPunchScale(mom.transform.right, 2f);
                dad.transform.DOPunchScale(-dad.transform.right, 2f);

                while (Vector3.Distance(dad.transform.position,childPos.position) >= .1f)
                {
                    mom.transform.position = Vector3.MoveTowards(mom.transform.position, childPos.position, Time.deltaTime * 10);
                    dad.transform.position = Vector3.MoveTowards(dad.transform.position, childPos.position, Time.deltaTime * 10);
                    yield return new WaitForEndOfFrame();
                }

                Destroy(mom);
                Destroy(dad);

                GameObject fx = Instantiate(fusionFx, childPos.position, Quaternion.identity) as GameObject;
                Destroy(fx, 5f);

                yield return new WaitForSeconds(2.5f); 

                GameObject child = AnimalManager.instance.GenerateAnimal(childPos.position, childInfo);
                child.GetComponent<Animal>().IsDrifting = false;
                child.transform.eulerAngles = new Vector3(0, 90, 0);

                child.transform.localScale = Vector3.zero;

                string completeName = "";
                foreach(string sylab in childInfo.name)
                {
                    completeName += sylab;
                }
                
                childName.transform.localScale = Vector3.zero;
                childName.text = completeName;
                childName.transform.DOScale(Vector3.one, 1f).SetEase(Ease.OutElastic);

                child.transform.DOScale(Vector3.one, 1f).SetEase(Ease.OutElastic);
                child.transform.DORotate(new Vector3(0, -90, 0),0.5f);
                yield return new WaitForSeconds(.5f);
                child.transform.DORotate(new Vector3(0, 90, 0), 0.5f);
                yield return new WaitForSeconds(.5f);
                Destroy(child, 2f);
            }
            else
            {
                GameObject remy = AnimalManager.instance.GenerateAnimal(childPos.position, savedAnimals[i]);
                remy.GetComponent<Animal>().IsDrifting = false;
                remy.transform.eulerAngles = new Vector3(0, 90, 0);
                Destroy(remy, 2f);
            }

            yield return new WaitForSeconds(2f);
            childName.text = "";
        }

        yield return new WaitForSeconds(10f);

        //End of game

        AnimalManager.instance.AddNewAnimals();

        SceneManager.LoadScene("Menu");
    }
	
}
