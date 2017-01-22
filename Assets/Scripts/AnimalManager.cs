using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimalManager : MonoBehaviour {

    public GameInfos gameInfos;

    public GameInfos initialGameInfos;

    public GameObject animalPrefab;
    
    List<AnimalInfo> savedAnimals = new List<AnimalInfo>();

    public static AnimalManager instance = null;

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
            instance.Init();
        }
    }

    private void Start()
    {
        Init();
    }

    public void Init()
    {
        savedAnimals.Clear();
    }

    public GameObject GenerateAnimal(Vector3 position , Vector3 target)
    {
        int animalIndex = Random.Range(0, gameInfos.currentAnimals.Count);

        AnimalInfo animalInfo = gameInfos.currentAnimals[animalIndex];

        return GenerateAnimal(position, target,  animalInfo);
    }

    public GameObject GenerateAnimal(Vector3 position, Vector3 endPosition, AnimalInfo animalInfo)
    {
        GameObject animal = GenerateAnimal(position, animalInfo);

        Animal anim = animal.GetComponent<Animal>();

        anim.animalInfo = animalInfo;
        anim.direction = (endPosition - position).normalized;
        anim.endPosition = endPosition;

        animal.transform.rotation = Quaternion.Euler(0,Random.Range(0,360),0);

        return animal;
    }

    public GameObject GenerateAnimal( Vector3 position, AnimalInfo animalInfo )
    {
        GameObject animal = null;

        animal = Instantiate( animalPrefab, position, Quaternion.identity ) as GameObject;

        GameObject body;
        Vector3 currentScale;

        if (animalInfo.body == "")
        {
            body = Instantiate(Resources.Load("Prefab/Heads/" + animalInfo.head), position, Quaternion.identity) as GameObject;
            currentScale = body.transform.localScale;
            body.transform.SetParent(animal.transform);
            body.tag = "Animal";
            SphereCollider sC = body.AddComponent<SphereCollider>();
            sC.radius = 0.8f;
        }
        else
        {
            body = Instantiate(Resources.Load("Prefab/Bodies/" + animalInfo.body), position, Quaternion.identity) as GameObject;
            currentScale = body.transform.localScale;
            body.transform.SetParent(animal.transform);

            GameObject head = Instantiate(Resources.Load("Prefab/Heads/" + animalInfo.head), body.GetComponent<BodyPartsPosition>().headPosition.position, Quaternion.identity) as GameObject;
            head.transform.SetParent(body.transform);

            if (animalInfo.tail != "")
            {
                GameObject tail = Instantiate(Resources.Load("Prefab/Tails/" + animalInfo.tail), body.GetComponent<BodyPartsPosition>().tailPosition.position, Quaternion.identity) as GameObject;
                tail.transform.SetParent(body.transform);
            }

            if (animalInfo.other != "")
            {
                GameObject other = Instantiate(Resources.Load("Prefab/Others/" + animalInfo.other), body.GetComponent<BodyPartsPosition>().otherPositions[0].position, Quaternion.identity) as GameObject;
                other.transform.SetParent(body.transform);

                other = Instantiate(Resources.Load("Prefab/Others/" + animalInfo.other), body.GetComponent<BodyPartsPosition>().otherPositions[1].position, Quaternion.identity) as GameObject;
                other.transform.SetParent(body.transform);

                other.transform.localScale = new Vector3(other.transform.localScale.x, -other.transform.localScale.y, other.transform.localScale.z);
            }
        }
        
        body.transform.localScale = currentScale;
        body.transform.eulerAngles = new Vector3(-90, 0, 0);

        animal.GetComponent<Animal>().animalInfo = animalInfo;
        
        return animal;
    }

    public AnimalInfo MixAnimals(AnimalInfo animal1, AnimalInfo animal2)
    {
        AnimalInfo res = new AnimalInfo();

        float equilibrator = .4f;

        if(Random.Range(0f, 0.8f) < equilibrator)
        {
            equilibrator = Mathf.Max(0, equilibrator - 0.2f);
            res.other = animal1.other;
        }
        else
        {
            equilibrator = Mathf.Min(0.8f, equilibrator + 0.2f);
            res.other = animal2.other;
        }
        if ((Random.Range(0f, 0.8f) < equilibrator && animal1.body!="") || animal2.body == "")
        {
            equilibrator = Mathf.Max(0, equilibrator - 0.2f);
            res.body = animal1.body;
        }
        else
        {
            equilibrator = Mathf.Min(0.8f, equilibrator + 0.2f);
            res.body = animal2.body;
        }
        if (Random.Range(0f, 0.8f) < equilibrator)
        {
            equilibrator = Mathf.Max(0, equilibrator - 0.2f);
            res.tail = animal1.tail;
        }
        else
        {
            equilibrator = Mathf.Min(0.8f, equilibrator + 0.2f);
            res.tail = animal2.tail;
        }
        if ((Random.Range(0f, 0.8f) < equilibrator && animal2.body != "" && animal1.body!=res.body) || animal1.body == "" || animal2.body == res.body)
        {
            equilibrator = Mathf.Max(0, equilibrator - 0.2f);
            res.head = animal1.head;
        }
        else
        {
            equilibrator = Mathf.Min(0.8f, equilibrator + 0.2f);
            res.head = animal2.head;
        }


        res.weight = Random.Range(animal1.weight, animal2.weight) + Random.Range(0, 50);

        res.name = new List<string>();

        float nbSyllabe = Mathf.Max(animal1.name.Count , animal2.name.Count) ;

        res.name.Add(animal1.name[0]);
        res.name.Add(animal2.name[1]);

        for(int i = 2; i<nbSyllabe; i++)
        {
            if(Random.value < 0.5f )
            {
               if( animal1.name.Count > i)
                {
                    res.name.Add( animal1.name[i]);
                }
            } 
            else
            {

                if (animal2.name.Count > i)
                {
                    res.name.Add(animal2.name[i]);
                }
            }
        }

        return res;
    }

    public void SaveAnimals(List<AnimalInfo> newAnimals)
    {
        savedAnimals = newAnimals;
    }

    public void AddNewAnimals()
    {
        foreach (AnimalInfo info in savedAnimals)
        {
            if (!gameInfos.currentAnimals.Contains(info))
            {
                gameInfos.currentAnimals.Add(info);
            }
        }
    }

    public void ResetAnimals()
    {
        gameInfos.currentAnimals.Clear();
        foreach(AnimalInfo info in initialGameInfos.currentAnimals)
        {
            gameInfos.currentAnimals.Add(info);
        }
    }

    public List<AnimalInfo> GetSavedAnimals()
    {
        return savedAnimals;
    }

    public void AddAnimal(AnimalInfo newAnimal)
    {
        savedAnimals.Add(newAnimal);
    }
}
