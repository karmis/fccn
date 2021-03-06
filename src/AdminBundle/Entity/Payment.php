<?php

namespace AdminBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Gedmo\Mapping\Annotation as Gedmo;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\HttpFoundation\File\UploadedFile;

/**
 * Article
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="AdminBundle\Repository\PaymentRepository")
 * @ORM\HasLifecycleCallbacks
 */
class Payment
{
    const LEGAL_TYPE = 'legal_type_payment';
    const INDIVIDUAL_TYPE = 'individual_type_payment';
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="type", type="string", length=50)
     */
    private $type;

    /**
     * @var string
     *
     * @ORM\Column(name="is_reciept", type="boolean", nullable=true)
     */
    private $isReciept;

    /**
     * @var string
     *
     * @ORM\Column(name="fio", type="string", length=255)
     */
    private $fio;

    /**
     * @var string
     *
     * @ORM\Column(name="organization", type="string", length=255)
     */
    private $organization;

    /**
     * @var string
     *
     * @ORM\Column(name="email", type="string", length=255)
     */
    private $email;

    /**
     * @var string
     *
     * @ORM\Column(name="summ", type="decimal", scale=2)
     */
    private $summ;

    /**
     * @var string
     *
     * @ORM\Column(name="phone", type="string", length=255)
     */
    private $phone;

    /**
     * @var string
     *
     * @ORM\Column(name="inn", type="string", length=100)
     */
    private $inn;

    /**
     * @var string
     *
     * @ORM\Column(name="bik", type="string", length=100)
     */
    private $bik;

    /**
     * @var string
     *
     * @ORM\Column(name="rs", type="string", length=100)
     */
    private $rs;

    /**
     * @var string
     *
     * @ORM\Column(name="ogrn", type="string", length=100)
     */
    private $ogrn;

    /**
     * @var string
     *
     * @ORM\Column(name="kpp", type="string", length=100)
     */
    private $kpp;

    /**
     * @var string
     *
     * @ORM\Column(name="basis", type="string", length=255)
     */
    private $basis;

    /**
     * @var string
     *
     * @ORM\Column(name="legalAddress", type="string", length=255)
     */
    private $legalAddress;

    /**
     * @var string
     *
     * @ORM\Column(name="mailAddress", type="string", length=255)
     */
    private $mailAddress;

    /**
     * @var datetime $created
     *
     * @ORM\Column(type="datetime")
     */
    private $created;

    /**
     * @var boolean
     *
     * @ORM\Column(name="deleted", type="boolean", nullable=true)
     */
    private $deleted;

    public function __construct()
    {
        $this->deleted = false;
        $this->created = new \DateTime();
    }

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set type
     *
     * @param string $type
     * @return Payment
     */
    public function setType($type)
    {
        $this->type = $type;

        return $this;
    }

    /**
     * Get type
     *
     * @return string 
     */
    public function getType()
    {
        return $this->type;
    }

    /**
     * Set fio
     *
     * @param string $fio
     * @return Payment
     */
    public function setFio($fio)
    {
        $this->fio = $fio;

        return $this;
    }

    /**
     * Get fio
     *
     * @return string 
     */
    public function getFio()
    {
        return $this->fio;
    }

    /**
     * Set organization
     *
     * @param string $organization
     * @return Payment
     */
    public function setOrganization($organization)
    {
        $this->organization = $organization;

        return $this;
    }

    /**
     * Get organization
     *
     * @return string 
     */
    public function getOrganization()
    {
        return $this->organization;
    }

    /**
     * Set email
     *
     * @param string $email
     * @return Payment
     */
    public function setEmail($email)
    {
        $this->email = $email;

        return $this;
    }

    /**
     * Get email
     *
     * @return string 
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Set summ
     *
     * @param string $summ
     * @return Payment
     */
    public function setSumm($summ)
    {
        $this->summ = $summ;

        return $this;
    }

    /**
     * Get summ
     *
     * @return string 
     */
    public function getSumm()
    {
        return $this->summ;
    }

    /**
     * Set phone
     *
     * @param string $phone
     * @return Payment
     */
    public function setPhone($phone)
    {
        $this->phone = $phone;

        return $this;
    }

    /**
     * Get phone
     *
     * @return string 
     */
    public function getPhone()
    {
        return $this->phone;
    }

    /**
     * Set inn
     *
     * @param string $inn
     * @return Payment
     */
    public function setInn($inn)
    {
        $this->inn = $inn;

        return $this;
    }

    /**
     * Get inn
     *
     * @return string 
     */
    public function getInn()
    {
        return $this->inn;
    }

    /**
     * Set bik
     *
     * @param string $bik
     * @return Payment
     */
    public function setBik($bik)
    {
        $this->bik = $bik;

        return $this;
    }

    /**
     * Get bik
     *
     * @return string 
     */
    public function getBik()
    {
        return $this->bik;
    }

    /**
     * Set rs
     *
     * @param string $rs
     * @return Payment
     */
    public function setRs($rs)
    {
        $this->rs = $rs;

        return $this;
    }

    /**
     * Get rs
     *
     * @return string 
     */
    public function getRs()
    {
        return $this->rs;
    }

    /**
     * Set ogrn
     *
     * @param string $ogrn
     * @return Payment
     */
    public function setOgrn($ogrn)
    {
        $this->ogrn = $ogrn;

        return $this;
    }

    /**
     * Get ogrn
     *
     * @return string 
     */
    public function getOgrn()
    {
        return $this->ogrn;
    }

    /**
     * Set kpp
     *
     * @param string $kpp
     * @return Payment
     */
    public function setKpp($kpp)
    {
        $this->kpp = $kpp;

        return $this;
    }

    /**
     * Get kpp
     *
     * @return string 
     */
    public function getKpp()
    {
        return $this->kpp;
    }

    /**
     * Set basis
     *
     * @param string $basis
     * @return Payment
     */
    public function setBasis($basis)
    {
        $this->basis = $basis;

        return $this;
    }

    /**
     * Get basis
     *
     * @return string 
     */
    public function getBasis()
    {
        return $this->basis;
    }

    /**
     * Set legalAddress
     *
     * @param string $legalAddress
     * @return Payment
     */
    public function setLegalAddress($legalAddress)
    {
        $this->legalAddress = $legalAddress;

        return $this;
    }

    /**
     * Get legalAddress
     *
     * @return string 
     */
    public function getLegalAddress()
    {
        return $this->legalAddress;
    }

    /**
     * Set mailAddress
     *
     * @param string $mailAddress
     * @return Payment
     */
    public function setMailAddress($mailAddress)
    {
        $this->mailAddress = $mailAddress;

        return $this;
    }

    /**
     * Get mailAddress
     *
     * @return string 
     */
    public function getMailAddress()
    {
        return $this->mailAddress;
    }

    /**
     * Set created
     *
     * @param \DateTime $created
     * @return Payment
     */
    public function setCreated($created)
    {
        $this->created = $created;

        return $this;
    }

    /**
     * Get created
     *
     * @return \DateTime 
     */
    public function getCreated()
    {
        return $this->created;
    }

    /**
     * Set deleted
     *
     * @param boolean $deleted
     * @return Payment
     */
    public function setDeleted($deleted)
    {
        $this->deleted = $deleted;

        return $this;
    }

    /**
     * Get deleted
     *
     * @return boolean 
     */
    public function getDeleted()
    {
        return $this->deleted;
    }

    /**
     * Set report
     *
     * @param string $report
     * @return Payment
     */
    public function setReport($report)
    {
        $this->report = $report;

        return $this;
    }

    /**
     * Get report
     *
     * @return string 
     */
    public function getReport()
    {
        return $this->report;
    }

    /**
     * Set isReciept
     *
     * @param boolean $isReciept
     * @return Payment
     */
    public function setIsReciept($isReciept)
    {
        $this->isReciept = $isReciept;

        return $this;
    }

    /**
     * Get isReciept
     *
     * @return boolean 
     */
    public function getIsReciept()
    {
        return $this->isReciept;
    }
}
