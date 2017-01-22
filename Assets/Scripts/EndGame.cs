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

    public Transform Sun;

    public TextMesh childName;

    public GameObject fusionFx;

    public float rotationSpeed = 10.0f;

    public AudioClip[] applause;

    private bool canContinue = true;
    private AudioSource audioSource;

    private void Start()
    {
        StartCoroutine(ShowNewAnimals());
        Sun.localScale = Vector3.zero;
        audioSource = GetComponent<AudioSource>();

        AnimalManager.instance.Unfade();
    }

    private void Update()
    {
        if(!canContinue)
        {
            if(Input.GetMouseButtonDown(0))
            {
                canContinue = true;
            }
        }
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

                ActiveSun(true);

                child.transform.DOScale( Vector3.one * 5.0f, 1f ).SetEase( Ease.OutElastic );
                child.GetComponentInChildren<AudioSource>().Play();

                audioSource.clip = applause[ Random.Range( 0, applause.Length ) ];
                audioSource.Play();

                canContinue = false;

                while(!canContinue)
                {
                    child.transform.Rotate(new Vector3(0, rotationSpeed * Time.deltaTime, 0));
                    yield return new WaitForEndOfFrame();
                }

                /*child.transform.DORotate(new Vector3(0, -90, 0),0.5f);
                yield return new WaitForSeconds(.5f);
                child.transform.DORotate(new Vector3(0, 90, 0), 0.5f);
                yield return new WaitForSeconds(.5f);*/

                ActiveSun(false);

                Destroy(child);
            }
            else
            {
                GameObject remy = AnimalManager.instance.GenerateAnimal(childPos.position, savedAnimals[i]);
                remy.GetComponent<Animal>().IsDrifting = false;
                remy.transform.eulerAngles = new Vector3(0, 90, 0);
                Destroy(remy,2.0f);
            }
            
            childName.text = "";
        }

        yield return null;
        
        //End of game

        AnimalManager.instance.AddNewAnimals();

        AnimalManager.instance.FadeScreen();
        
        yield return new WaitForSeconds(0.5f);

        SceneManager.LoadScene("Menu");
    }

    private void ActiveSun(bool active)
    {
        if(active)
        {
            Sun.DOScale(Vector3.one * 1.2f, 1f);
        }
        else
        {
            Sun.DOScale(Vector3.zero, 1f);
        }
    }
	
}
