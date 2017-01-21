// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:5622,x:35679,y:33931,varname:node_5622,prsc:2|diff-8759-OUT,spec-5687-OUT,gloss-5057-OUT,normal-8617-OUT,alpha-3222-OUT,voffset-6811-OUT;n:type:ShaderForge.SFN_Sin,id:2338,x:31878,y:32972,varname:node_2338,prsc:2|IN-5185-OUT;n:type:ShaderForge.SFN_Multiply,id:6524,x:32935,y:33103,varname:node_6524,prsc:2|A-2338-OUT,B-403-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:1243,x:29638,y:32006,varname:node_1243,prsc:2;n:type:ShaderForge.SFN_Color,id:1107,x:33612,y:33577,ptovrint:False,ptlb:Base Color,ptin:_BaseColor,varname:node_1107,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.9705882,c3:0.9277681,c4:1;n:type:ShaderForge.SFN_Add,id:5185,x:31383,y:32667,varname:node_5185,prsc:2|A-989-OUT,B-3531-OUT;n:type:ShaderForge.SFN_Time,id:5099,x:30626,y:32806,varname:node_5099,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:9908,x:30414,y:33029,ptovrint:False,ptlb:Waves Speed,ptin:_WavesSpeed,cmnt:S,varname:node_9908,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_ComponentMask,id:3857,x:29851,y:32006,varname:node_3857,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-1243-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:5763,x:29851,y:31810,cmnt:Di,varname:node_5763,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-9365-RGB;n:type:ShaderForge.SFN_Dot,id:1663,x:30316,y:31915,varname:node_1663,prsc:2,dt:0|A-5692-OUT,B-3857-OUT;n:type:ShaderForge.SFN_Color,id:9365,x:29638,y:31810,ptovrint:False,ptlb:Direction,ptin:_Direction,varname:node_9365,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.309,c3:0,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:4733,x:29424,y:32783,ptovrint:False,ptlb:WaveLegt_L,ptin:_WaveLegt_L,varname:node_4733,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:100;n:type:ShaderForge.SFN_Vector1,id:6532,x:29424,y:32690,varname:node_6532,prsc:2,v1:2;n:type:ShaderForge.SFN_Divide,id:4163,x:29813,y:32672,cmnt:wi,varname:node_4163,prsc:2|A-1119-OUT,B-4733-OUT;n:type:ShaderForge.SFN_Multiply,id:989,x:30910,y:32404,varname:node_989,prsc:2|A-1663-OUT,B-4163-OUT;n:type:ShaderForge.SFN_Multiply,id:4301,x:30626,y:32997,cmnt: S x 2L,varname:node_4301,prsc:2|A-4163-OUT,B-9908-OUT;n:type:ShaderForge.SFN_Multiply,id:3531,x:30904,y:32911,varname:node_3531,prsc:2|A-5099-T,B-4301-OUT;n:type:ShaderForge.SFN_Multiply,id:9013,x:32112,y:34356,varname:node_9013,prsc:2|A-164-OUT,B-5751-OUT;n:type:ShaderForge.SFN_Sin,id:164,x:31504,y:34253,varname:node_164,prsc:2|IN-7481-OUT;n:type:ShaderForge.SFN_Add,id:7481,x:31304,y:34253,varname:node_7481,prsc:2|A-7918-OUT,B-9751-OUT;n:type:ShaderForge.SFN_Multiply,id:9751,x:30826,y:34497,varname:node_9751,prsc:2|A-6800-T,B-8779-OUT;n:type:ShaderForge.SFN_Multiply,id:8779,x:30548,y:34538,varname:node_8779,prsc:2|A-3817-OUT,B-7937-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7937,x:30336,y:34615,ptovrint:False,ptlb:Waves Speed_2,ptin:_WavesSpeed_2,varname:_WavesSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Time,id:6800,x:30548,y:34392,varname:node_6800,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7918,x:30832,y:33990,varname:node_7918,prsc:2|A-5979-OUT,B-3817-OUT;n:type:ShaderForge.SFN_Divide,id:3817,x:29735,y:34258,varname:node_3817,prsc:2|A-8490-OUT,B-4956-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4956,x:29499,y:34360,ptovrint:False,ptlb:WaveLegt_L_2,ptin:_WaveLegt_L_2,varname:_WaveLegt_L_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:100;n:type:ShaderForge.SFN_FragmentPosition,id:92,x:29556,y:33592,varname:node_92,prsc:2;n:type:ShaderForge.SFN_Color,id:6310,x:29556,y:33396,ptovrint:False,ptlb:Direction_2,ptin:_Direction_2,varname:_Direction_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.691,c2:0.309,c3:0,c4:1;n:type:ShaderForge.SFN_ComponentMask,id:6572,x:29755,y:33592,varname:node_6572,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-92-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:1547,x:29769,y:33396,varname:node_1547,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-6310-RGB;n:type:ShaderForge.SFN_Dot,id:5979,x:30188,y:33499,varname:node_5979,prsc:2,dt:0|A-3767-OUT,B-6572-OUT;n:type:ShaderForge.SFN_Add,id:2107,x:32875,y:33864,varname:node_2107,prsc:2|A-6524-OUT,B-9013-OUT;n:type:ShaderForge.SFN_Multiply,id:1119,x:29627,y:32627,varname:node_1119,prsc:2|A-3534-OUT,B-6532-OUT;n:type:ShaderForge.SFN_Pi,id:3534,x:29457,y:32571,varname:node_3534,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8490,x:29499,y:34184,varname:node_8490,prsc:2|A-5539-OUT,B-5458-OUT;n:type:ShaderForge.SFN_Pi,id:5539,x:29329,y:34128,varname:node_5539,prsc:2;n:type:ShaderForge.SFN_Vector1,id:5458,x:29296,y:34247,varname:node_5458,prsc:2,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:403,x:32445,y:33138,ptovrint:False,ptlb:Amplitde,ptin:_Amplitde,varname:node_403,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:5751,x:31816,y:34454,ptovrint:False,ptlb:Amplitde_2,ptin:_Amplitde_2,varname:_Amplitde_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Slider,id:4381,x:33692,y:34069,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_4381,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6905372,max:1;n:type:ShaderForge.SFN_Vector1,id:629,x:34948,y:34287,varname:node_629,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:5692,x:30044,y:31844,varname:node_5692,prsc:2|A-5763-OUT,B-4163-OUT;n:type:ShaderForge.SFN_Multiply,id:3767,x:29972,y:33357,varname:node_3767,prsc:2|A-1547-OUT,B-3817-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7107,x:32873,y:34310,ptovrint:False,ptlb:DepthBlend01,ptin:_DepthBlend01,varname:node_7107,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Vector1,id:8173,x:33719,y:33748,varname:node_8173,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:6811,x:33336,y:34081,varname:node_6811,prsc:2|A-2107-OUT,B-7939-OUT;n:type:ShaderForge.SFN_Tex2d,id:8114,x:33763,y:32727,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_8114,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:638ad46838159624b880a7341a609146,ntxv:3,isnm:True|UVIN-9779-UVOUT;n:type:ShaderForge.SFN_Lerp,id:8617,x:34038,y:32759,varname:node_8617,prsc:2|A-8114-RGB,B-5476-OUT,T-4959-OUT;n:type:ShaderForge.SFN_Vector3,id:5476,x:33763,y:32611,varname:node_5476,prsc:2,v1:0.4980392,v2:0.4980392,v3:1;n:type:ShaderForge.SFN_Slider,id:4959,x:33790,y:33011,ptovrint:False,ptlb:Normal Intensity,ptin:_NormalIntensity,varname:node_4959,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Panner,id:9779,x:33378,y:32623,varname:node_9779,prsc:2,spu:1,spv:1|UVIN-7620-UVOUT,DIST-2549-OUT;n:type:ShaderForge.SFN_Multiply,id:2549,x:33166,y:32647,varname:node_2549,prsc:2|A-5729-T,B-2474-OUT;n:type:ShaderForge.SFN_Time,id:5729,x:32931,y:32574,varname:node_5729,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:2474,x:32931,y:32727,ptovrint:False,ptlb:MouvSpeed,ptin:_MouvSpeed,varname:node_2474,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_TexCoord,id:7620,x:33166,y:32463,varname:node_7620,prsc:2,uv:0;n:type:ShaderForge.SFN_Lerp,id:3222,x:34244,y:34095,varname:node_3222,prsc:2|A-8173-OUT,B-4381-OUT,T-1279-OUT;n:type:ShaderForge.SFN_Power,id:1279,x:33801,y:34297,varname:node_1279,prsc:2|VAL-2719-OUT,EXP-6775-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6775,x:33394,y:34507,ptovrint:False,ptlb:DBP1,ptin:_DBP1,varname:node_6775,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:8192,x:34033,y:34774,ptovrint:False,ptlb:Foam,ptin:_Foam,varname:node_8192,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a573184e63626914797daced75cf0773,ntxv:0,isnm:False|UVIN-1264-OUT;n:type:ShaderForge.SFN_Lerp,id:600,x:34389,y:34739,varname:node_600,prsc:2|A-8192-RGB,B-617-OUT,T-1279-OUT;n:type:ShaderForge.SFN_Vector1,id:617,x:34033,y:34941,varname:node_617,prsc:2,v1:0;n:type:ShaderForge.SFN_DepthBlend,id:2719,x:33050,y:34310,varname:node_2719,prsc:2|DIST-7107-OUT;n:type:ShaderForge.SFN_OneMinus,id:9323,x:34132,y:34478,varname:node_9323,prsc:2|IN-2812-OUT;n:type:ShaderForge.SFN_Power,id:2812,x:33801,y:34424,varname:node_2812,prsc:2|VAL-1466-OUT,EXP-4379-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4379,x:33394,y:34595,ptovrint:False,ptlb:DBP2,ptin:_DBP2,varname:_DBP2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:7382,x:33844,y:35000,ptovrint:False,ptlb:Clouds,ptin:_Clouds,varname:node_7382,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ba37349d2e148c743a23954dcb764e72,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Time,id:9791,x:33217,y:34871,varname:node_9791,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:4553,x:33217,y:35024,ptovrint:False,ptlb:FoamSpeed,ptin:_FoamSpeed,varname:_MouvSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:4121,x:33452,y:34944,varname:node_4121,prsc:2|A-9791-T,B-4553-OUT;n:type:ShaderForge.SFN_TexCoord,id:70,x:33452,y:34760,varname:node_70,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:7360,x:33647,y:34944,varname:node_7360,prsc:2,spu:-1,spv:0|UVIN-70-UVOUT,DIST-4121-OUT;n:type:ShaderForge.SFN_Lerp,id:1264,x:34295,y:35132,varname:node_1264,prsc:2|A-7360-UVOUT,B-8272-OUT,T-6566-OUT;n:type:ShaderForge.SFN_Append,id:8272,x:34080,y:35033,varname:node_8272,prsc:2|A-7382-R,B-7382-G;n:type:ShaderForge.SFN_Slider,id:6566,x:33848,y:35292,ptovrint:False,ptlb:Foam UV Deformation,ptin:_FoamUVDeformation,varname:node_6566,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:2425,x:34663,y:33715,varname:node_2425,prsc:2|A-1107-RGB,B-4077-OUT,T-600-OUT;n:type:ShaderForge.SFN_Vector1,id:4077,x:34417,y:33749,varname:node_4077,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:9125,x:35039,y:33757,varname:node_9125,prsc:2|A-2425-OUT,B-4077-OUT,T-9323-OUT;n:type:ShaderForge.SFN_DepthBlend,id:1466,x:33050,y:34448,varname:node_1466,prsc:2|DIST-4081-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4081,x:32873,y:34482,ptovrint:False,ptlb:DepthBlend02,ptin:_DepthBlend02,varname:_DepthBlend02,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Vector3,id:7939,x:33014,y:34049,varname:node_7939,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_ValueProperty,id:5687,x:35007,y:34022,ptovrint:False,ptlb:Spec,ptin:_Spec,varname:node_5687,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:5057,x:35007,y:34095,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Spec_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ObjectPosition,id:2761,x:34618,y:34625,varname:node_2761,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:81,x:34618,y:34769,varname:node_81,prsc:2;n:type:ShaderForge.SFN_Subtract,id:7385,x:34819,y:34707,varname:node_7385,prsc:2|A-81-Y,B-2761-Y;n:type:ShaderForge.SFN_Power,id:1590,x:35496,y:34643,varname:node_1590,prsc:2|VAL-7385-OUT,EXP-9326-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9326,x:35229,y:34946,ptovrint:False,ptlb:Foam size,ptin:_Foamsize,varname:node_9326,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Lerp,id:4754,x:35223,y:34229,varname:node_4754,prsc:2|A-629-OUT,B-8192-RGB,T-9641-OUT;n:type:ShaderForge.SFN_Lerp,id:8759,x:35414,y:33831,varname:node_8759,prsc:2|A-9125-OUT,B-4077-OUT,T-479-OUT;n:type:ShaderForge.SFN_Clamp01,id:479,x:35401,y:34110,varname:node_479,prsc:2|IN-4754-OUT;n:type:ShaderForge.SFN_Multiply,id:9641,x:35278,y:34632,varname:node_9641,prsc:2|A-1664-OUT,B-9326-OUT;n:type:ShaderForge.SFN_Add,id:1664,x:35048,y:34707,varname:node_1664,prsc:2|A-7385-OUT,B-812-OUT;n:type:ShaderForge.SFN_ValueProperty,id:812,x:34819,y:34845,ptovrint:False,ptlb:Foam pos,ptin:_Foampos,varname:node_812,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:1107-9908-9365-4733-7937-4956-6310-403-5751-4381-7107-8114-4959-2474-6775-8192-4379-7382-4553-6566-4081-5687-5057-9326-812;pass:END;sub:END;*/

Shader "Custom/SHD_SeaTuto" {
    Properties {
        _BaseColor ("Base Color", Color) = (0,0.9705882,0.9277681,1)
        _WavesSpeed ("Waves Speed", Float ) = 0.2
        _Direction ("Direction", Color) = (1,0.309,0,1)
        _WaveLegt_L ("WaveLegt_L", Float ) = 100
        _WavesSpeed_2 ("Waves Speed_2", Float ) = 0.2
        _WaveLegt_L_2 ("WaveLegt_L_2", Float ) = 100
        _Direction_2 ("Direction_2", Color) = (0.691,0.309,0,1)
        _Amplitde ("Amplitde", Float ) = 0
        _Amplitde_2 ("Amplitde_2", Float ) = 0
        _Opacity ("Opacity", Range(0, 1)) = 0.6905372
        _DepthBlend01 ("DepthBlend01", Float ) = 0
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _NormalIntensity ("Normal Intensity", Range(0, 1)) = 0
        _MouvSpeed ("MouvSpeed", Float ) = 0
        _DBP1 ("DBP1", Float ) = 1
        _Foam ("Foam", 2D) = "white" {}
        _DBP2 ("DBP2", Float ) = 1
        _Clouds ("Clouds", 2D) = "white" {}
        _FoamSpeed ("FoamSpeed", Float ) = 0
        _FoamUVDeformation ("Foam UV Deformation", Range(0, 1)) = 0
        _DepthBlend02 ("DepthBlend02", Float ) = 0
        _Spec ("Spec", Float ) = 0
        _Gloss ("Gloss", Float ) = 0
        _Foamsize ("Foam size", Float ) = 0
        _Foampos ("Foam pos", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _BaseColor;
            uniform float _WavesSpeed;
            uniform float4 _Direction;
            uniform float _WaveLegt_L;
            uniform float _WavesSpeed_2;
            uniform float _WaveLegt_L_2;
            uniform float4 _Direction_2;
            uniform float _Amplitde;
            uniform float _Amplitde_2;
            uniform float _Opacity;
            uniform float _DepthBlend01;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalIntensity;
            uniform float _MouvSpeed;
            uniform float _DBP1;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float _DBP2;
            uniform sampler2D _Clouds; uniform float4 _Clouds_ST;
            uniform float _FoamSpeed;
            uniform float _FoamUVDeformation;
            uniform float _DepthBlend02;
            uniform float _Spec;
            uniform float _Gloss;
            uniform float _Foamsize;
            uniform float _Foampos;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float node_4163 = ((3.141592654*2.0)/_WaveLegt_L); // wi
                float4 node_5099 = _Time + _TimeEditor;
                float node_3817 = ((3.141592654*2.0)/_WaveLegt_L_2);
                float4 node_6800 = _Time + _TimeEditor;
                v.vertex.xyz += (((sin(((dot((_Direction.rgb.rb*node_4163),mul(unity_ObjectToWorld, v.vertex).rgb.rb)*node_4163)+(node_5099.g*(node_4163*_WavesSpeed))))*_Amplitde)+(sin(((dot((_Direction_2.rgb.rb*node_3817),mul(unity_ObjectToWorld, v.vertex).rgb.rb)*node_3817)+(node_6800.g*(node_3817*_WavesSpeed_2))))*_Amplitde_2))*float3(0,0,1));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_5729 = _Time + _TimeEditor;
                float2 node_9779 = (i.uv0+(node_5729.g*_MouvSpeed)*float2(1,1));
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_9779, _NormalMap)));
                float3 normalLocal = lerp(_NormalMap_var.rgb,float3(0.4980392,0.4980392,1),_NormalIntensity);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_Spec,_Spec,_Spec);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float node_4077 = 1.0;
                float4 node_9791 = _Time + _TimeEditor;
                float4 _Clouds_var = tex2D(_Clouds,TRANSFORM_TEX(i.uv0, _Clouds));
                float2 node_1264 = lerp((i.uv0+(node_9791.g*_FoamSpeed)*float2(-1,0)),float2(_Clouds_var.r,_Clouds_var.g),_FoamUVDeformation);
                float4 _Foam_var = tex2D(_Foam,TRANSFORM_TEX(node_1264, _Foam));
                float node_617 = 0.0;
                float node_1279 = pow(saturate((sceneZ-partZ)/_DepthBlend01),_DBP1);
                float node_629 = 0.0;
                float node_7385 = (i.posWorld.g-objPos.g);
                float3 diffuseColor = lerp(lerp(lerp(_BaseColor.rgb,float3(node_4077,node_4077,node_4077),lerp(_Foam_var.rgb,float3(node_617,node_617,node_617),node_1279)),float3(node_4077,node_4077,node_4077),(1.0 - pow(saturate((sceneZ-partZ)/_DepthBlend02),_DBP2))),float3(node_4077,node_4077,node_4077),saturate(lerp(float3(node_629,node_629,node_629),_Foam_var.rgb,((node_7385+_Foampos)*_Foamsize))));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,lerp(1.0,_Opacity,node_1279));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _BaseColor;
            uniform float _WavesSpeed;
            uniform float4 _Direction;
            uniform float _WaveLegt_L;
            uniform float _WavesSpeed_2;
            uniform float _WaveLegt_L_2;
            uniform float4 _Direction_2;
            uniform float _Amplitde;
            uniform float _Amplitde_2;
            uniform float _Opacity;
            uniform float _DepthBlend01;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalIntensity;
            uniform float _MouvSpeed;
            uniform float _DBP1;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float _DBP2;
            uniform sampler2D _Clouds; uniform float4 _Clouds_ST;
            uniform float _FoamSpeed;
            uniform float _FoamUVDeformation;
            uniform float _DepthBlend02;
            uniform float _Spec;
            uniform float _Gloss;
            uniform float _Foamsize;
            uniform float _Foampos;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float node_4163 = ((3.141592654*2.0)/_WaveLegt_L); // wi
                float4 node_5099 = _Time + _TimeEditor;
                float node_3817 = ((3.141592654*2.0)/_WaveLegt_L_2);
                float4 node_6800 = _Time + _TimeEditor;
                v.vertex.xyz += (((sin(((dot((_Direction.rgb.rb*node_4163),mul(unity_ObjectToWorld, v.vertex).rgb.rb)*node_4163)+(node_5099.g*(node_4163*_WavesSpeed))))*_Amplitde)+(sin(((dot((_Direction_2.rgb.rb*node_3817),mul(unity_ObjectToWorld, v.vertex).rgb.rb)*node_3817)+(node_6800.g*(node_3817*_WavesSpeed_2))))*_Amplitde_2))*float3(0,0,1));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_5729 = _Time + _TimeEditor;
                float2 node_9779 = (i.uv0+(node_5729.g*_MouvSpeed)*float2(1,1));
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_9779, _NormalMap)));
                float3 normalLocal = lerp(_NormalMap_var.rgb,float3(0.4980392,0.4980392,1),_NormalIntensity);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_Spec,_Spec,_Spec);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float node_4077 = 1.0;
                float4 node_9791 = _Time + _TimeEditor;
                float4 _Clouds_var = tex2D(_Clouds,TRANSFORM_TEX(i.uv0, _Clouds));
                float2 node_1264 = lerp((i.uv0+(node_9791.g*_FoamSpeed)*float2(-1,0)),float2(_Clouds_var.r,_Clouds_var.g),_FoamUVDeformation);
                float4 _Foam_var = tex2D(_Foam,TRANSFORM_TEX(node_1264, _Foam));
                float node_617 = 0.0;
                float node_1279 = pow(saturate((sceneZ-partZ)/_DepthBlend01),_DBP1);
                float node_629 = 0.0;
                float node_7385 = (i.posWorld.g-objPos.g);
                float3 diffuseColor = lerp(lerp(lerp(_BaseColor.rgb,float3(node_4077,node_4077,node_4077),lerp(_Foam_var.rgb,float3(node_617,node_617,node_617),node_1279)),float3(node_4077,node_4077,node_4077),(1.0 - pow(saturate((sceneZ-partZ)/_DepthBlend02),_DBP2))),float3(node_4077,node_4077,node_4077),saturate(lerp(float3(node_629,node_629,node_629),_Foam_var.rgb,((node_7385+_Foampos)*_Foamsize))));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * lerp(1.0,_Opacity,node_1279),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _WavesSpeed;
            uniform float4 _Direction;
            uniform float _WaveLegt_L;
            uniform float _WavesSpeed_2;
            uniform float _WaveLegt_L_2;
            uniform float4 _Direction_2;
            uniform float _Amplitde;
            uniform float _Amplitde_2;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float node_4163 = ((3.141592654*2.0)/_WaveLegt_L); // wi
                float4 node_5099 = _Time + _TimeEditor;
                float node_3817 = ((3.141592654*2.0)/_WaveLegt_L_2);
                float4 node_6800 = _Time + _TimeEditor;
                v.vertex.xyz += (((sin(((dot((_Direction.rgb.rb*node_4163),mul(unity_ObjectToWorld, v.vertex).rgb.rb)*node_4163)+(node_5099.g*(node_4163*_WavesSpeed))))*_Amplitde)+(sin(((dot((_Direction_2.rgb.rb*node_3817),mul(unity_ObjectToWorld, v.vertex).rgb.rb)*node_3817)+(node_6800.g*(node_3817*_WavesSpeed_2))))*_Amplitde_2))*float3(0,0,1));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
